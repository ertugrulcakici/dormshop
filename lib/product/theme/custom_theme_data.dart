import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  final Color messagesBackground = const Color(0xFFF6F6F6);
  final Color filterColor = const Color(0xFFFF0000);
  final Color lightblueColor = const Color(0xFFB0CBFF);
  final Color darkblueColor = const Color(0xFF4888FE);
  final Color inputTextColor = const Color(0xFF585858);
  final Color backgroundColor = const Color(0xFFD7E5FF);
}

@immutable
final class _FontThemeData {
  static _FontThemeData? _instance;
  static _FontThemeData get instance => _instance ??= _FontThemeData._();
  _FontThemeData._() {
    base = GoogleFonts.baloo2();
  }

  late final TextStyle base;
  late final TextStyle largeText =
      base.copyWith(fontSize: 60.sp, fontWeight: FontWeight.w800);
  late final TextStyle descriptionStyle =
      base.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w500);
  late final TextStyle containerText =
      base.copyWith(fontSize: 23.sp, fontWeight: FontWeight.w400);
  late final TextStyle rememberTextStyle =
      base.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400);
  late final TextStyle pageBold =
      base.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold);
  late final TextStyle pageExtrabold =
      base.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w800);
  late final TextStyle authErrorTitle =
      base.copyWith(fontSize: 40.sp, fontWeight: FontWeight.w800);
  late final TextStyle authContText =
      base.copyWith(fontSize: 30.sp, fontWeight: FontWeight.bold);
  late final TextStyle adTitle =
      base.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600);
  late final TextStyle adDescription =
      base.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w600);
  late final TextStyle filterContainerText =
      base.copyWith(fontSize: 23.sp, fontWeight: FontWeight.w600);
  late final TextStyle adPriceText =
      base.copyWith(fontSize: 30.sp, fontWeight: FontWeight.w600);
  late final TextStyle searchAdTitle =
      base.copyWith(fontSize: 27.sp, fontWeight: FontWeight.w800);
  late final TextStyle searchAdDescription =
      base.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w600);
  late final TextStyle searchAdPrice =
      base.copyWith(fontSize: 30.sp, fontWeight: FontWeight.w600);
}
