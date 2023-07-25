import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        _map(),
      ],
    );
  }

  Widget _map() {
    return const SizedBox();
  }

}
