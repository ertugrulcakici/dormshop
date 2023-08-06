import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/product/components/custom_advert_container.dart';
import 'package:dormshop/product/components/custom_container.dart';
import 'package:dormshop/product/components/custom_profile_button.dart';
import 'package:dormshop/product/enum/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/theme/custom_theme_data.dart';
import '../message/message_view.dart';

class OtherProfileView extends StatefulWidget {
  const OtherProfileView({super.key});

  @override
  State<OtherProfileView> createState() => _OtherProfileViewState();
}

class _OtherProfileViewState extends State<OtherProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 0.03.sh,
            ),
            CircleAvatar(
              radius: 115,
              backgroundColor: CustomThemeData.colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            Text("Mehmet Özdemir",
                style: CustomThemeData.fonts.authContText.copyWith(
                  color: CustomThemeData.colors.black,
                )),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomProfileButton(
                text: "Jobn Obletal",
                onPressed: () {},
                icon: ImageAssets.location),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomAdvertContainer(text: "Active Advert", number: 125),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomAdvertContainer(text: "Pasive Advert", number: 12),
            SizedBox(
              height: 0.03.sh,
            ),
            Padding(
              padding: CustomThemeData.ui.pagePaddingW * 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MessagesView()));
                },
                child: CustomContainer(
                    imageAssetPath: ImageAssets.box, text: "See Active Advets"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
