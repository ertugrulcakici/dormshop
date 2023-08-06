import 'package:flutter/material.dart';

import '../theme/custom_theme_data.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String imageAssetPath;
  const CustomButton({
    super.key,
    required this.text,
    required this.imageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: CustomThemeData.colors.darkblueColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        child: Row(
          children: [
            Text(
              text,
              style: CustomThemeData.fonts.containerText
                  .copyWith(color: CustomThemeData.colors.white),
            ),
            const SizedBox(width: 5),
            Image.asset(
              imageAssetPath,
              width: 25,
            )
          ],
        ),
      ),
    );
  }
}
