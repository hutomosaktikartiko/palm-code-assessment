import '../entities/book_entity.dart';
import '../repositories/book_repository.dart';

class GetBooksUsecase {
  final BookRepository bookRepository;

  GetBooksUsecase({required this.bookRepository});

  Future<PaginatedBooksEntity> call({String? url}) {
    return bookRepository.getBooks(url: url);
  }
}
