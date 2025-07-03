import '../../../../core/errors/failure.dart';
import '../../../../core/networks/network_info.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repositories/book_repository.dart';
import '../mappers/book_mapper.dart';
import '../sources/book_remote_source.dart';

class BookRepositoryImpl implements BookRepository {
  final NetworkInfo networkInfo;
  final BookRemoteSource bookRemoteSource;

  BookRepositoryImpl({
    required this.networkInfo,
    required this.bookRemoteSource,
  });

  @override
  Future<PaginatedBooksEntity> getBooks({String? url}) async {
    try {
      if (await networkInfo.isConnected) {
        final result = await bookRemoteSource.getBooks(url: url);

        return BookMapper.toPaginatedEntity(result);
      } else {
        throw const NetworkFailure();
      }
    } catch (error) {
      rethrow;
    }
  }
}
