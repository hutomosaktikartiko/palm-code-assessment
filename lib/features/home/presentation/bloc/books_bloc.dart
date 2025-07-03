import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palm_code_assessment/features/home/domain/entities/book_entity.dart';
import 'package:palm_code_assessment/features/home/domain/usecases/get_books_usecase.dart';

import 'books_event.dart';
import 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final GetBooksUsecase getBooksUsecase;

  BooksBloc({required this.getBooksUsecase})
    : super(const BooksState.initial()) {
    on<BooksEvent>((event, emit) async {
      await event.when(
        getBooks: () => _onGetBooks(emit),
        loadNextPage: () => _onLoadNextPage(emit),
        loadPreviousPage: () => _onLoadPreviousPage(emit),
        refreshBooks: () => _onRefreshBooks(emit),
      );
    });
  }

  Future<void> _onGetBooks(Emitter<BooksState> emit) async {
    emit(const BooksState.loading());

    try {
      final result = await getBooksUsecase();

      emit(
        BooksState.success(
          allBooks: result.results,
          totalCount: result.count,
          nextPageUrl: result.next,
          previousPageUrl: result.previous,
          hasReachedMax: result.next == null,
        ),
      );
    } catch (e) {
      emit(BooksState.failure(message: e.toString()));
    }
  }

  Future<void> _onLoadNextPage(Emitter<BooksState> emit) async {
    final currentState = state;

    // Check if current state is success and has next page
    currentState.whenOrNull(
      success:
          (
            allBooks,
            totalCount,
            nextPageUrl,
            previousPageUrl,
            isPaginating,
            hasReachedMax,
          ) {
            if (nextPageUrl != null && !isPaginating) {
              _loadNextPageData(emit, allBooks, nextPageUrl);
            }
          },
    );
  }

  Future<void> _loadNextPageData(
    Emitter<BooksState> emit,
    List<BookEntity> currentBooks,
    String nextPageUrl,
  ) async {
    // Show pagination loading
    state.whenOrNull(
      success:
          (
            allBooks,
            totalCount,
            nextUrl,
            prevUrl,
            isPaginating,
            hasReachedMax,
          ) {
            emit(
              BooksState.success(
                allBooks: allBooks,
                totalCount: totalCount,
                nextPageUrl: nextUrl,
                previousPageUrl: prevUrl,
                isPaginating: true,
                hasReachedMax: hasReachedMax,
              ),
            );
          },
    );

    try {
      final result = await getBooksUsecase(url: nextPageUrl);
      final updatedBooks = [...currentBooks, ...result.results];

      emit(
        BooksState.success(
          allBooks: updatedBooks,
          totalCount: result.count,
          nextPageUrl: result.next,
          previousPageUrl: result.previous,
          isPaginating: false,
          hasReachedMax: result.next == null,
        ),
      );
    } catch (e) {
      // Reset pagination loading state on error
      state.whenOrNull(
        success:
            (
              allBooks,
              totalCount,
              nextUrl,
              prevUrl,
              isPaginating,
              hasReachedMax,
            ) {
              emit(
                BooksState.success(
                  allBooks: allBooks,
                  totalCount: totalCount,
                  nextPageUrl: nextUrl,
                  previousPageUrl: prevUrl,
                  isPaginating: false,
                  hasReachedMax: hasReachedMax,
                ),
              );
            },
      );
    }
  }

  Future<void> _onLoadPreviousPage(Emitter<BooksState> emit) async {
    final currentState = state;

    currentState.whenOrNull(
      success:
          (
            allBooks,
            totalCount,
            nextPageUrl,
            previousPageUrl,
            isPaginating,
            hasReachedMax,
          ) {
            if (previousPageUrl != null && !isPaginating) {
              _loadPreviousPageData(emit, previousPageUrl);
            }
          },
    );
  }

  Future<void> _loadPreviousPageData(
    Emitter<BooksState> emit,
    String previousPageUrl,
  ) async {
    // Show pagination loading
    state.whenOrNull(
      success:
          (
            allBooks,
            totalCount,
            nextUrl,
            prevUrl,
            isPaginating,
            hasReachedMax,
          ) {
            emit(
              BooksState.success(
                allBooks: allBooks,
                totalCount: totalCount,
                nextPageUrl: nextUrl,
                previousPageUrl: prevUrl,
                isPaginating: true,
                hasReachedMax: hasReachedMax,
              ),
            );
          },
    );

    try {
      final result = await getBooksUsecase(url: previousPageUrl);

      emit(
        BooksState.success(
          allBooks: result.results, // Replace with previous page data
          totalCount: result.count,
          nextPageUrl: result.next,
          previousPageUrl: result.previous,
          isPaginating: false,
          hasReachedMax: result.next == null,
        ),
      );
    } catch (e) {
      // Reset pagination loading state on error
      state.whenOrNull(
        success:
            (
              allBooks,
              totalCount,
              nextUrl,
              prevUrl,
              isPaginating,
              hasReachedMax,
            ) {
              emit(
                BooksState.success(
                  allBooks: allBooks,
                  totalCount: totalCount,
                  nextPageUrl: nextUrl,
                  previousPageUrl: prevUrl,
                  isPaginating: false,
                  hasReachedMax: hasReachedMax,
                ),
              );
            },
      );
    }
  }

  Future<void> _onRefreshBooks(Emitter<BooksState> emit) async {
    await _onGetBooks(emit);
  }
}
