// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dormshop/product/enum/image_assets.dart';
import 'package:flutter/material.dart';

import 'package:dormshop/product/theme/custom_theme_data.dart';

class CustomContainer extends StatelessWidget {
  final ImageAssets imageAssetPath;
  final String text;
  const CustomContainer({
    Key? key,
    required this.imageAssetPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: CustomThemeData.ui.borderRadius,
        color: CustomThemeData.colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Image.asset(
              imageAssetPath.assetPath,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: CustomThemeData.fonts.filterContainerText,
            )
          ],
        ),
      ),
    );
  }
}
