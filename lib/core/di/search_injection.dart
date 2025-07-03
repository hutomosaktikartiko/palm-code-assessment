import 'package:get_it/get_it.dart';

// TODO: Uncomment imports ketika search feature sudah diimplementasi
// import '../../features/search/data/repositories/search_repository_impl.dart';
// import '../../features/search/data/sources/search_remote_source.dart';
// import '../../features/search/domain/repositories/search_repository.dart';
// import '../../features/search/domain/usecases/search_books_usecase.dart';
// import '../../features/search/presentation/bloc/search_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureSearchDependencies() async {
  // TODO: Implementasi dependency injection untuk search feature

  // Data sources
  // getIt.registerLazySingleton<SearchRemoteSource>(
  //   () => SearchRemoteSourceImpl(remoteSource: getIt()),
  // );

  // Repositories
  // getIt.registerLazySingleton<SearchRepository>(
  //   () => SearchRepositoryImpl(
  //     networkInfo: getIt(),
  //     searchRemoteSource: getIt(),
  //   ),
  // );

  // Use cases
  // getIt.registerLazySingleton<SearchBooksUsecase>(
  //   () => SearchBooksUsecase(searchRepository: getIt()),
  // );

  // Blocs
  // getIt.registerFactory<SearchBloc>(
  //   () => SearchBloc(searchBooksUsecase: getIt()),
  // );
}
