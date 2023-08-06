import 'package:dormshop/product/components/custom_text_field.dart';
import 'package:dormshop/product/enum/image_assets.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/components/background_widget.dart';
import '../../../product/components/custom_button.dart';
import '../../main/advert/advert_view.dart';
import '../login/login_view.dart';

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
        body: BackgroundWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.07.sh,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0.065.sw,
                    ),
                    Text("Register",
                        style: CustomThemeData.fonts.largeText.copyWith(
                          color: CustomThemeData.colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 0.12.sh,
              ),
              Column(
                children: [
                  Padding(
                    padding: CustomThemeData.ui.pagePaddingW * 2,
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return [
                            () => const CustomTextField(hintText: "Enter Name"),
                            () =>
                                const CustomTextField(hintText: "Enter E-Mail"),
                            () => const CustomTextField(hintText: "Password"),
                            () => const CustomTextField(
                                hintText: "Password Again"),
                            () => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginView()));
                                      },
                                      child: Text(
                                        "Login",
                                        style: CustomThemeData
                                            .fonts.pageExtrabold
                                            .copyWith(
                                                color: CustomThemeData
                                                    .colors.inputTextColor),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AdvertView()));
                                      },
                                      child: CustomButton(
                                          text: "Register",
                                          imageAssetPath:
                                              ImageAssets.arrowRight.assetPath),
                                    )
                                  ],
                                )
                          ][index]();
                        }),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 0.02.sh,
                          );
                        },
                        itemCount: 5),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
