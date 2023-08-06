import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/product/components/custom_profile_button.dart';
import 'package:dormshop/product/enum/image_assets.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../otherprofile/other_profile_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          child: Center(
        child: Column(
          children: [
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
            Text("İremnur Özdemir",
                style: CustomThemeData.fonts.authContText.copyWith(
                  color: CustomThemeData.colors.black,
                )),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomProfileButton(
              text: "My Adverts",
              onPressed: () {},
              icon: ImageAssets.profileSettingsItem,
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomProfileButton(
              text: "Saved",
              onPressed: () {},
              icon: ImageAssets.profileSettingsItem,
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomProfileButton(
              text: "My Adress",
              onPressed: () {},
              icon: ImageAssets.profileSettingsItem,
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            CustomProfileButton(
              text: "Password",
              onPressed: () {},
              icon: ImageAssets.profileSettingsItem,
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OtherProfileView())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.signOut.assetPath),
                  Text("Sign Out",
                      style: CustomThemeData.fonts.searchAdTitle.copyWith(
                        color: CustomThemeData.colors.filterColor,
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
