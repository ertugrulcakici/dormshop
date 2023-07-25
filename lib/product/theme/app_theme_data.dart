import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

@immutable
final class AppThemeData {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: CustomThemeData.colors.backgroundColor,
    primaryColor: CustomThemeData.colors.darkblueColor,
    bottomAppBarTheme:
        BottomAppBarTheme(color: CustomThemeData.colors.darkblueColor),
    colorScheme: ColorScheme.light(
      primary: CustomThemeData.colors.darkblueColor,
      secondary: CustomThemeData.colors.lightblueColor,
    ),
  );
}
