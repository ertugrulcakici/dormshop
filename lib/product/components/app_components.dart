import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: CustomThemeData.colors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 10),
                )
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.06,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: hintText)),
            )));
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final String icon;
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: CustomThemeData.colors.darkblueColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
        child: Row(
          children: [
            Text(
              text,
              style: CustomThemeData.fonts.containerText
                  .copyWith(color: CustomThemeData.colors.whiteColor),
            ),
            Image.asset(
              "$icon",
              width: 25,
            )
          ],
        ),
      ),
    );
  }
}
