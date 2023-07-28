import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

import '../../../product/components/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: CustomThemeData.colors.backgroundColor,
          child: Stack(
            children: [
              Positioned(
                top: -170,
                left: -70,
                child: CircleAvatar(
                  radius: 200,
                  backgroundColor: CustomThemeData.colors.darkblueColor,
                ),
              ),
              Positioned(
                bottom: -100,
                right: -100,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: CustomThemeData.colors.lightblueColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Text(
                  "Register",
                  style: CustomThemeData.fonts.largeText
                      .copyWith(color: CustomThemeData.colors.white),
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomTextField(hintText: "Name"),
                    const CustomTextField(hintText: "E-Mail"),
                    const CustomTextField(hintText: "Password"),
                    const CustomTextField(hintText: "Confirm Password"),
                    Row(
                      children: [
                        Text(
                          "Login",
                          style: CustomThemeData.fonts.pageBold,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
