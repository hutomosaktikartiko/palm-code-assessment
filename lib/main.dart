import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection_container.dart';
import 'core/observers/bloc_observer_info.dart';
import 'core/routers/router_info.dart';
import 'shared/config/theme_config.dart';

Future<void> main() async {
  await init();

  runApp(const MainApp());
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependencies
  await configureDependencies();

  // bloc observer
  Bloc.observer = BlocObserverInfo();

  // set orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: RouterInfo.router.routeInformationParser,
      routerDelegate: RouterInfo.router.routerDelegate,
      routeInformationProvider: RouterInfo.router.routeInformationProvider,
      theme: ThemeConfig.light,
    );
  }
}
