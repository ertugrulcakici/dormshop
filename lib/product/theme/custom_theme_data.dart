import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
final class CustomThemeData {
  static final colors = _ColorThemeData.instance;
  static final fonts = _FontThemeData.instance;
}

@immutable
final class _ColorThemeData {
  static _ColorThemeData? _instance;
  static _ColorThemeData get instance =>
      _instance ??= const _ColorThemeData._();
  const _ColorThemeData._();

  final Color primaryColor = const Color(0xFF3F51B5);
}

@immutable
final class _FontThemeData {
  static _FontThemeData? _instance;
  static _FontThemeData get instance => _instance ??= _FontThemeData._();
  _FontThemeData._() {
    base = GoogleFonts.baloo2();
  }

  late final TextStyle base;

  late final TextStyle title =
      base.copyWith(fontSize: 60, fontWeight: FontWeight.bold);
}
