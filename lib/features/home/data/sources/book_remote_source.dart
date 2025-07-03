import 'package:palm_code_assessment/features/home/data/models/book_model.dart';

import '../../../../core/data/sources/remote_source.dart';

abstract class BookRemoteSource {
  Future<PaginatedBooksResponse> getBooks({String? url});
}

class BookRemoteSourceImpl implements BookRemoteSource {
  final RemoteSource remoteSource;

  BookRemoteSourceImpl({required this.remoteSource});

  @override
  Future<PaginatedBooksResponse> getBooks({String? url}) async {
    try {
      final response = await remoteSource.get(
        url: url ?? "https://gutendex.com/books",
      );

      return PaginatedBooksResponse.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }
}
