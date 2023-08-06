// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../enum/image_assets.dart';
import '../theme/custom_theme_data.dart';

class CustomProfileButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final ImageAssets icon;

  const CustomProfileButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: CustomThemeData.ui.pagePaddingW * 6,
        child: Container(
          decoration: BoxDecoration(
            color: CustomThemeData.colors.white,
            borderRadius: CustomThemeData.ui.borderRadius,
            boxShadow: [
              BoxShadow(
                color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ],
          ),
          height: 0.06.sh,
          child: Padding(
            padding: CustomThemeData.ui.pagePaddingW * 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(icon.assetPath),
                SizedBox(
                  width: 0.03.sw,
                ),
                Text(text,
                    style: CustomThemeData.fonts.searchAdTitle.copyWith(
                      color: CustomThemeData.colors.inputTextColor,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
