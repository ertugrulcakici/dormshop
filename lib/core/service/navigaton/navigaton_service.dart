import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
final class NavigationService {
  // singleton boilerplate
  static const NavigationService _instance = NavigationService._internal();
  static NavigationService get instance => _instance;
  const NavigationService._internal();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final BuildContext? context = navigatorKey.currentContext;

  static Future navigateToView(Widget view) async {
    if (!Platform.isAndroid) {
      await navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (context) => view,
        ),
      );
    } else {
      await navigatorKey.currentState!.push(
        CupertinoPageRoute(
          builder: (context) => view,
        ),
      );
    }
  }
}
