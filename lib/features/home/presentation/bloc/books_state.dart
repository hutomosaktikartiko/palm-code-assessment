import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palm_code_assessment/features/home/domain/entities/book_entity.dart';

part 'books_state.freezed.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial() = _Initial;

  const factory BooksState.loading() = _Loading;

  const factory BooksState.success({
    required List<BookEntity> allBooks,
    required int totalCount,
    required String? nextPageUrl,
    required String? previousPageUrl,
    @Default(false) bool isPaginating,
    @Default(false) bool hasReachedMax,
  }) = _Success;

  const factory BooksState.failure({
    required String message,
    @Default([]) List<BookEntity> allBooks,
    @Default(0) int totalCount,
    String? nextPageUrl,
    String? previousPageUrl,
  }) = _Failure;
}
