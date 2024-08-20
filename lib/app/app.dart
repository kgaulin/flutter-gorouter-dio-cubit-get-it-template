import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_gorouter_template/app/providers.dart';
import 'package:flutter_cubit_gorouter_template/app/router.dart';
import 'package:flutter_cubit_gorouter_template/core/globale.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: router,
        scaffoldMessengerKey: scaffoldMessengerKey,
      ),
    );
  }
}
