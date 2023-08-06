import 'package:flutter/material.dart';

import '../theme/custom_theme_data.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: CustomThemeData.colors.white,
          boxShadow: [
            BoxShadow(
              color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 10),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.06,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: hintText)),
        ));
  }
}
