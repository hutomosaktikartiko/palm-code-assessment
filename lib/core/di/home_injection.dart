import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repositories/book_repository_impl.dart';
import '../../features/home/data/sources/book_remote_source.dart';
import '../../features/home/domain/repositories/book_repository.dart';
import '../../features/home/domain/usecases/get_books_usecase.dart';
import '../../features/home/presentation/bloc/books_bloc.dart';
import '../data/sources/remote_source.dart';
import '../networks/network_info.dart';
import '../observers/dio_interceptor.dart';

final getIt = GetIt.instance;

Future<void> configureHomeDependencies() async {
  // Core dependencies (jika belum diregistrasi)
  if (!getIt.isRegistered<Connectivity>()) {
    getIt.registerLazySingleton<Connectivity>(() => Connectivity());
  }

  if (!getIt.isRegistered<Dio>()) {
    getIt.registerLazySingleton<Dio>(() {
      final dio = Dio();
      dio.interceptors.add(DioInterceptor());
      return dio;
    });
  }

  if (!getIt.isRegistered<NetworkInfo>()) {
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectivity: getIt()),
    );
  }

  if (!getIt.isRegistered<RemoteSource>()) {
    getIt.registerLazySingleton<RemoteSource>(
      () => RemoteSourceImpl(dio: getIt()),
    );
  }

  // Home feature dependencies
  getIt.registerLazySingleton<BookRemoteSource>(
    () => BookRemoteSourceImpl(remoteSource: getIt()),
  );

  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(networkInfo: getIt(), bookRemoteSource: getIt()),
  );

  getIt.registerLazySingleton<GetBooksUsecase>(
    () => GetBooksUsecase(bookRepository: getIt()),
  );

  getIt.registerFactory<BooksBloc>(() => BooksBloc(getBooksUsecase: getIt()));
}
