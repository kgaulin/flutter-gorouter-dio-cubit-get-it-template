import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_gorouter_template/app/app.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/di/di.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlavorConfig(location: BannerLocation.bottomStart, variables: {});

  configureDependencies();
  await EasyLocalization.ensureInitialized();
  await getIt.allReady();

  FlutterNativeSplash.remove();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('fr')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const App()),
  );
}
