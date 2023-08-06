import 'package:dormshop/product/components/app_components.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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
                      .copyWith(color: CustomThemeData.colors.whiteColor),
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(hintText: "Name"),
                    CustomTextField(hintText: "E-Mail"),
                    CustomTextField(hintText: "Password"),
                    CustomTextField(hintText: "Confirm Password"),
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
