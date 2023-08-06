import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/components/custom_advert_container.dart';
import '../../../product/enum/image_assets.dart';
import '../../../product/theme/custom_theme_data.dart';
import '../profile/profile_view.dart';

class DormView extends StatefulWidget {
  const DormView({super.key});

  @override
  State<DormView> createState() => _DormViewState();
}

class _DormViewState extends State<DormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: CustomThemeData.colors.backgroundColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselSlider(items: [
                Image.network(
                  "https://picsum.photos/630",
                  width: 630,
                  height: 630,
                ),
                Image.network("https://picsum.photos/630"),
                Image.network("https://picsum.photos/630"),
              ], options: CarouselOptions(height: 310, autoPlay: true)),
              Padding(
                padding: CustomThemeData.ui.pagePaddingW * 1.5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 0.5.sh,
                  decoration: BoxDecoration(
                    color: CustomThemeData.colors.white,
                    borderRadius: CustomThemeData.ui.borderRadius,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Jan Obletal",
                                style: CustomThemeData.fonts.authContText,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "125 People are staying here",
                                style: CustomThemeData.fonts.containerText,
                              ),
                            ],
                          ),
                          SizedBox(height: 0.01.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const CustomAdvertContainer(
                                    number: 120,
                                    text: "Active Advert:",
                                  ),
                                  SizedBox(height: 0.01.sh),
                                  const CustomAdvertContainer(
                                    number: 12,
                                    text: "Passive Advert:",
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  print("See All Adverts");
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          CustomThemeData.colors.darkblueColor,
                                      borderRadius:
                                          CustomThemeData.ui.borderRadius,
                                    ),
                                    width: 0.35.sw,
                                    height: 0.14.sh,
                                    child: Center(
                                      child: Expanded(
                                        child: Text("See \nAll Adverts",
                                            textAlign: TextAlign.center,
                                            style: CustomThemeData
                                                .fonts.authContText
                                                .copyWith(
                                              color:
                                                  CustomThemeData.colors.white,
                                            )),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: 0.03.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //TODO: MAPS
                              Container(
                                height: 0.25.sh,
                                width: 0.5.sw,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: CustomThemeData.ui.borderRadius,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("Get Direction");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const ProfileView();
                                  }));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          CustomThemeData.colors.darkblueColor,
                                      borderRadius:
                                          CustomThemeData.ui.borderRadius,
                                    ),
                                    width: 0.35.sw,
                                    height: 0.25.sh,
                                    child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Get Direction",
                                              textAlign: TextAlign.center,
                                              style: CustomThemeData
                                                  .fonts.authContText
                                                  .copyWith(
                                                color: CustomThemeData
                                                    .colors.white,
                                              )),
                                          Image.asset(
                                              ImageAssets.compass.assetPath)
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
