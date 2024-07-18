import 'package:flutter/material.dart';

enum Locales {
  tr(Locale('tr', 'TR')),
  en(Locale('en', 'US'));

  //held locale object
  final Locale locale;
  const Locales(this.locale);
}
