import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/product/init/app_init.dart';
import 'package:architecture_template_v2/product/init/custom_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'product/utility/const/enums/locales.dart';

Future<void> main() async {
  await  AppInit.initialize();
  runApp(
    CustomLocalization(child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates, //?
        supportedLocales: [
          Locales.tr.locale,
          Locales.en.locale,
        ], //?
        locale: context.locale, //?
        home: const HomeView());
  }
}
