// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_theme_data.dart';

class CustomAdvertContainer extends StatelessWidget {
  final String text;
  final int number;

  const CustomAdvertContainer({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.5.sw,
      decoration: BoxDecoration(
        color: CustomThemeData.colors.white,
        border: Border.all(
          color: CustomThemeData.colors.inputTextColor,
          width: 1.5,
        ),
        borderRadius: CustomThemeData.ui.borderRadius,
        boxShadow: [
          BoxShadow(
            color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: CustomThemeData.fonts.pageExtrabold,
            ),
            Text("$number", style: CustomThemeData.fonts.containerText)
          ],
        ),
      ),
    );
  }
}
