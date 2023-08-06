// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_theme_data.dart';

class CustomMessageBox extends StatefulWidget {
  final String title;
  final String description;
  final bool isActiveMesaage;
  final int activeMessageCount;
  const CustomMessageBox({
    Key? key,
    required this.title,
    required this.description,
    required this.isActiveMesaage,
    required this.activeMessageCount,
  }) : super(key: key);

  @override
  State<CustomMessageBox> createState() => _CustomMessageBoxState();
}

class _CustomMessageBoxState extends State<CustomMessageBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomThemeData.colors.white,
            borderRadius: CustomThemeData.ui.borderRadius,
            border: Border.all(
              width: 2,
              color: CustomThemeData.colors.darkblueColor,
            ),
            boxShadow: [
              BoxShadow(
                color: CustomThemeData.colors.inputTextColor.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 10),
              )
            ],
          ),
          height: 0.2.sh,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 0.35.sw,
                  decoration: BoxDecoration(
                      borderRadius: CustomThemeData.ui.borderRadius,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/400"),
                      )),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Laptop Pack",
                          style: CustomThemeData.fonts.filterContainerText,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: CustomThemeData.colors.filterColor,
                          child: Text(
                            "2",
                            style: CustomThemeData.fonts.adTitle.copyWith(
                              color: CustomThemeData.colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Magna nulla dolore labore anim. Laborum officia aute est mollit culpa sint. Exercitation quis sint velit proident sint minim excepteur commodo velit nisi. Tempor aliquip ullamco fugiat occaecat exercitation enim consequat velit proident ",
                      style: CustomThemeData.fonts.rememberTextStyle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("")
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: CustomThemeData.ui.pageMarginH,
          child: Divider(
            thickness: 2,
            color: CustomThemeData.colors.lightblueColor,
          ),
        )
      ],
    );
  }
}
