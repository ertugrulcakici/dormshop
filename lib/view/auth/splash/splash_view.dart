import 'package:dormshop/core/service/navigaton/navigaton_service.dart';
import 'package:dormshop/view/main/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              NavigationService.navigateToView(const HomeView());
            },
            child: const Text("Splash")),
      ),
    );
  }
}
