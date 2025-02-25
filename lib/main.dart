import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';

import 'product/init/app_init.dart';
import 'product/init/custom_localization.dart';

import 'package:flutter/material.dart';

import 'product/init/theme/dark_theme.dart';
import 'product/init/theme/light_theme.dart';
import 'product/utility/const/enums/locales.dart';

Future<void> main() async {
  await AppInit.initialize();
  runApp(
    CustomLocalization(child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      themeMode: View.of(context).platformDispatcher.platformBrightness ==
              Brightness.light
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: CustomLightTheme().themedata,
      darkTheme: CustomDarkTheme().themedata,
      /*****/
      localizationsDelegates: context.localizationDelegates, //?
      supportedLocales: [
        Locales.tr.locale,
        Locales.en.locale,
      ], //?
      locale: context.locale, //?
      /*****/
      // home: const HomeView(),
    );
  }
}
