import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

@immutable
final class AppThemeData {
  static final ThemeData light = ThemeData.from(
    colorScheme:
        ColorScheme.fromSeed(seedColor: CustomThemeData.colors.primaryColor),
    textTheme: TextTheme(titleLarge: CustomThemeData.fonts.title),
    useMaterial3: true,
  );
}
