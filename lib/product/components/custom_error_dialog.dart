import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import '../enum/image_assets.dart';
import '../theme/custom_theme_data.dart';

//
Widget customErrorDialog(BuildContext context) {
  return BlurryContainer(
    blur: 15,
    color: Colors.transparent,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Center(
      child: Container(
        decoration: BoxDecoration(
          color: CustomThemeData.colors.darkblueColor,
          borderRadius: CustomThemeData.ui.borderRadius,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.cancel.assetPath,
            ),
            Text(
                "Sorry, This Advert is not available. Please Check other Adverts.",
                textAlign: TextAlign.center,
                style: CustomThemeData.fonts.authErrorTitle
                    .copyWith(color: CustomThemeData.colors.white)),
          ],
        ),
      ),
    ),
  );
}
