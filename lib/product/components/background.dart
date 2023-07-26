import 'package:dormshop/product/constant/app_constants.dart';
import 'package:flutter/material.dart';

@immutable
class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.designHeight,
      width: AppConstants.designWidth,
      child: _background(context),
    );
  }

  Widget _background(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            // bottom: MediaQuery.of(context).padding.bottom
          ),
          child: child,
        )
      ],
    );
  }
}
