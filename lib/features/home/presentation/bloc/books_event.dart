import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_event.freezed.dart';

@freezed
class BooksEvent with _$BooksEvent {
  const factory BooksEvent.getBooks() = _GetBooks;
  const factory BooksEvent.loadNextPage() = _LoadNextPage;
  const factory BooksEvent.loadPreviousPage() = _LoadPreviousPage;
  const factory BooksEvent.refreshBooks() = _RefreshBooks;
}
