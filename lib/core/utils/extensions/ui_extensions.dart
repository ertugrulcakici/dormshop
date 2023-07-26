import 'package:flutter/widgets.dart';

import '../../../product/constant/app_constants.dart';
import '../../service/navigaton/navigaton_service.dart';

extension UIExtension on num {
  get smh {
    num scale = this / AppConstants.designHeight;
    num screenHeight =
        MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .size
                .height -
            MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .padding
                .top -
            MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .padding
                .bottom;
    num result = screenHeight * scale;
    return result;
  }

  get smw {
    num scale = this / AppConstants.designWidth;
    num screenWidth =
        MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .size
                .width -
            MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .padding
                .left -
            MediaQuery.of(NavigationService.navigatorKey.currentContext!)
                .padding
                .right;
    return screenWidth * scale;
  }
}
