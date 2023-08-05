import 'package:dormshop/core/service/navigaton/navigaton_service.dart';
import 'package:dormshop/product/constant/app_constants.dart';
import 'package:dormshop/product/theme/app_theme_data.dart';
import 'package:dormshop/view/main/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  await initApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize:
            const Size(AppConstants.designWidth, AppConstants.designHeight),
        builder: (context, child) => child!,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dorm Shop',
          theme: AppThemeData.light,
          navigatorKey: NavigationService.navigatorKey,
          home: const HomeView(),
        ),
      ),
    );
  }
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
}
