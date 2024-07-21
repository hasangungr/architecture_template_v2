import 'package:architecture_template_v2/product/init/theme/app_theme.dart';
import 'package:architecture_template_v2/product/init/theme/custom_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomLightTheme implements AppTheme {
  @override
  ThemeData get themedata => ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: textTheme,
      );

  @override
  Color get scaffoldColor => CustomColorScheme.lightColorScheme.primary;

  @override
  TextTheme get textTheme {
    final base = GoogleFonts.abelTextTheme();
    return base.copyWith(
      displayLarge: base.bodyLarge?.copyWith(color: Colors.red),
    );
  }
}
