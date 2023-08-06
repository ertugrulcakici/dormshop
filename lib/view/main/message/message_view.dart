import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/components/custom_message_box.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({super.key});

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          child: Center(
              child: Padding(
        padding: CustomThemeData.ui.pagePaddingW,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: CustomThemeData.ui.borderRadius,
            color: CustomThemeData.colors.white,
          ),
          height: 0.9.sh,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: CustomThemeData.ui.pagePaddingW +
                CustomThemeData.ui.pagePaddingH,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Messages: ",
                        style: CustomThemeData.fonts.authContText,
                      ),
                    ],
                  ),
                  CustomMessageBox(
                    title: "Deneme",
                    description:
                        "DenemeDenemeDenemeDenemeDenemeDenemeDenemeDenemeDeneme",
                    isActiveMesaage: true,
                    activeMessageCount: 2,
                  ),
                  CustomMessageBox(
                    title: "Deneme",
                    description:
                        "DenemeDenemeDenemeDenemeDenemeDenemeDenemeDenemeDeneme",
                    isActiveMesaage: true,
                    activeMessageCount: 2,
                  ),
                  CustomMessageBox(
                    title: "Deneme",
                    description:
                        "DenemeDenemeDenemeDenemeDenemeDenemeDenemeDenemeDeneme",
                    isActiveMesaage: true,
                    activeMessageCount: 2,
                  ),
                  CustomMessageBox(
                    title: "Deneme",
                    description:
                        "DenemeDenemeDenemeDenemeDenemeDenemeDenemeDenemeDeneme",
                    isActiveMesaage: true,
                    activeMessageCount: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ))),
    );
  }
}
