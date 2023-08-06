import 'package:dormshop/core/utils/extensions/ui_extensions.dart';
import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../theme/custom_theme_data.dart';

@immutable
class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConstants.designHeight,
        width: AppConstants.designWidth,
        child: _background(context),
      ),
    );
  }

  Widget _background(BuildContext context) {
    return Stack(
      children: [
        // background image
        SizedBox.expand(
          child: Stack(
            children: [
              _circle(
                  top: 30.smh,
                  left: 300.smw,
                  radius: 150,
                  color: CustomThemeData.colors.lightblueColor),
              _circle(
                  top: -180,
                  left: -85,
                  radius: 220,
                  color: CustomThemeData.colors.darkblueColor),
              _circle(
                  top: -200,
                  left: -90,
                  radius: 150,
                  color: CustomThemeData.colors.lightblueColor),
            ],
          ),
        ),
        // foreground page
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top,
            // bottom: MediaQuery.of(context).padding.bottom
          ),
          child: child,
        )
      ],
    );
  }

  Widget _circle(
      {required double top,
      required double left,
      required double radius,
      required Color color}) {
    return Positioned(
      top: top,
      left: left,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: color,
      ),
    );
  }
}
