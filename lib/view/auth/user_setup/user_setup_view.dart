import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserSetupView extends ConsumerStatefulWidget {
  const UserSetupView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSetupViewState();
}

class _UserSetupViewState extends ConsumerState<UserSetupView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("UserSetupView"),
      ),
    );
  }
}
