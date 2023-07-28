import 'package:dormshop/core/service/navigaton/navigaton_service.dart';
import 'package:dormshop/product/theme/app_theme_data.dart';
import 'package:dormshop/view/auth/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: (context, child) => child!,
        child: MaterialApp(
          title: 'Dorm Shop',
          theme: AppThemeData.light,
          navigatorKey: NavigationService.navigatorKey,
          home: LoginView(),
        ),
      ),
    );
  }
}
