// ignore_for_file: public_member_api_docs

import 'package:architecture_template/product/init/app_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/custom_light_theme.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await AppInitialize().make();
  runApp(
    ProviderScope(
      child: ProductLocalization(
        child: const _MyApp(),
      ),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  const _MyApp();

  static final _appRotuer = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRotuer.config(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.light,
    );
  }
}
