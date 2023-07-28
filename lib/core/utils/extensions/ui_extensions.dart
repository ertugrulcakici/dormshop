import 'package:flutter/widgets.dart';

import '../../../product/constant/app_constants.dart';
import '../../service/navigaton/navigaton_service.dart';

extension UIExtension on num {
  get smh {
    BuildContext context = NavigationService.navigatorKey.currentContext!;
    num scale = this / AppConstants.designHeight;
    num screenHeight = MediaQuery.sizeOf(context).height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    num result = screenHeight * scale;
    return result;
  }

  get smw {
    BuildContext context = NavigationService.navigatorKey.currentContext!;
    num scale = this / AppConstants.designWidth;
    num screenWidth = MediaQuery.sizeOf(context).width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return screenWidth * scale;
  }
}
