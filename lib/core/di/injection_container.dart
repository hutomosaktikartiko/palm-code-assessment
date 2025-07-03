import 'package:get_it/get_it.dart';

import 'home_injection.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Initialize core dependencies
  await _initCore();

  // Initialize feature dependencies
  await _initFeatures();
}

Future<void> _initCore() async {
  // Core dependencies akan diinisialisasi di sini
  // Seperti Dio, Network, dll
}

Future<void> _initFeatures() async {
  // Initialize home feature
  await configureHomeDependencies();

  // TODO: Initialize other features
  // await configureLikesDependencies();
  // await configureSearchDependencies();
  // await configureBookDetailsDependencies();
}

// Helper method untuk reset dependencies (berguna untuk testing)
Future<void> resetDependencies() async {
  await getIt.reset();
}
