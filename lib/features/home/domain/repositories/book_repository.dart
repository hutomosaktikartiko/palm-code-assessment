import '../entities/book_entity.dart';

abstract class BookRepository {
  Future<PaginatedBooksEntity> getBooks({String? url});
}
