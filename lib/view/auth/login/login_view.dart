import 'package:dormshop/core/utils/extensions/ui_extensions.dart';
import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/view/auth/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/components/custom_button.dart';
import '../../../product/enum/image_assets.dart';
import '../../../product/theme/custom_theme_data.dart';

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
      body: BackgroundWidget(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 0.05.sh),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 0.065.sw),
                  Text(
                    "Welcome",
                    style: CustomThemeData.fonts.largeText.copyWith(
                      color: CustomThemeData.colors.white,
                    ),
                  )
                ],
              )),
          SizedBox(height: 0.15.sh),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageAssets.google.assetPath),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.smw),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return [
                        () => Center(
                              child: Text(
                                "or login with your e-mail address",
                                style: CustomThemeData.fonts.descriptionStyle
                                    .copyWith(
                                        color: CustomThemeData
                                            .colors.inputTextColor),
                              ),
                            ),
                        () => Container(
                            decoration: BoxDecoration(
                              borderRadius: CustomThemeData.ui.borderRadius,
                              color: CustomThemeData.colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: CustomThemeData.colors.inputTextColor
                                      .withOpacity(0.3),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "E-mail")),
                            )),
                        () => Container(
                            decoration: BoxDecoration(
                              borderRadius: CustomThemeData.ui.borderRadius,
                              color: CustomThemeData.colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: CustomThemeData.colors.inputTextColor
                                      .withOpacity(0.3),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password")),
                            )),
                        () => Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterView()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color:
                                          CustomThemeData.colors.darkblueColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 8),
                                      child: Row(
                                        children: [
                                          CustomButton(
                                            text: "Login",
                                            imageAssetPath: ImageAssets
                                                .arrowRight.assetPath,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                      ][index]();
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 0.02.sh),
                    itemCount: 4),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 30.smh, left: 20.smw, right: 20.smw),
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
          )
        ],
      )),
    );
  }
}
