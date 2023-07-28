import 'package:dormshop/product/components/app_components.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:dormshop/view/auth/signin/sigin_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: CustomThemeData.colors.backgroundColor,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  right: -100,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: CustomThemeData.colors.lightblueColor,
                  ),
                ),
                Positioned(
                  top: -180,
                  left: -85,
                  child: CircleAvatar(
                    radius: 210,
                    backgroundColor: CustomThemeData.colors.darkblueColor,
                  ),
                ),
                Positioned(
                  top: -200,
                  left: -90,
                  child: CircleAvatar(
                    radius: 150,
                    backgroundColor: CustomThemeData.colors.lightblueColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              "Welcome",
              style: CustomThemeData.fonts.largeText.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icons/Google.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    "or login with your e-mail adress",
                    style: CustomThemeData.fonts.descriptionStyle
                        .copyWith(color: CustomThemeData.colors.inputTextColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: CustomThemeData.colors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: CustomThemeData.colors.inputTextColor
                                .withOpacity(0.3),
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
                                border: InputBorder.none, hintText: "E-mail")),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: CustomThemeData.colors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: CustomThemeData.colors.inputTextColor
                                .withOpacity(0.3),
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
                                border: InputBorder.none,
                                hintText: "Password")),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninView()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: CustomThemeData.colors.darkblueColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 5, bottom: 5),
                            child: Row(
                              children: [
                                CustomButton(
                                  text: "Login",
                                  icon: "assets/icons/arrow.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "I Forget my password",
                        style: CustomThemeData.fonts.pageBold.copyWith(
                            color: CustomThemeData.colors.inputTextColor),
                      ),
                      Text(
                        "Create a new account",
                        style: CustomThemeData.fonts.pageExtrabold.copyWith(
                            color: CustomThemeData.colors.inputTextColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
