import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'custom_color_scheme.dart';

final class CustomDarkTheme implements AppTheme {
  @override
  ThemeData get themedata => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: scaffoldColor,
      );

  @override
  Color get scaffoldColor => CustomColorScheme.darkColorScheme.surface;

  @override
  TextTheme get textTheme => throw UnimplementedError();
}
