import 'package:architecture_template_v2/product/utility/const/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

//Localization Manager
@immutable
final class CustomLocalization extends EasyLocalization {
  CustomLocalization({
    super.key,
    required super.child,
  }) : super(
          useOnlyLangCode: true,
          supportedLocales: [
            Locales.tr.locale,
            Locales.en.locale,
          ],
          path: "assets/translations",
        );

  static Future<void> changeLang(
          {required BuildContext context, required Locales locales}) =>
      context.setLocale(locales.locale);



      
}
