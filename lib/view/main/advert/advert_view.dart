import 'package:carousel_slider/carousel_slider.dart';

import 'package:dormshop/product/enum/image_assets.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../product/components/custom_container.dart';
import '../dorm/dorms_view.dart';

class AdvertView extends StatefulWidget {
  const AdvertView({super.key});

  @override
  State<AdvertView> createState() => _AdvertViewState();
}

class _AdvertViewState extends State<AdvertView> {
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
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 310,
                autoPlay: true,
              ),
              items: [
                Image.network("https://picsum.photos/630"),
                Image.network("https://picsum.photos/630"),
                Image.network("https://picsum.photos/630"),
              ],
            ),
            SizedBox(height: 0.02.sh),
            Padding(
              padding: CustomThemeData.ui.pagePaddingW * 2,
              child: Column(
                children: [
                  CustomContainer(
                      text: "Mustafa KARA",
                      imageAssetPath: ImageAssets.userCircleBlue),
                  SizedBox(height: 0.02.sh),
                  CustomContainer(
                      text: "Jan Obletal",
                      imageAssetPath: ImageAssets.location),
                  SizedBox(height: 0.02.sh),
                  Container(
                    decoration: BoxDecoration(
                      color: CustomThemeData.colors.white,
                      borderRadius: CustomThemeData.ui.borderRadius,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 0.3.sh,
                    child: Padding(
                      padding: CustomThemeData.ui.pagePaddingW * 2,
                      child: ListView(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Advert Name:",
                                style: CustomThemeData.fonts.pageBold.copyWith(
                                    color:
                                        CustomThemeData.colors.inputTextColor),
                              ),
                              SizedBox(
                                width: 0.02.sw,
                              ),
                              Text(
                                "Lorem Ipsum",
                                style: CustomThemeData.fonts.pageExtrabold,
                              ),
                            ],
                          ),
                          SizedBox(height: 0.02.sh),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 0.02.sw),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Advert Detail:",
                                  style: CustomThemeData.fonts.pageBold
                                      .copyWith(
                                          color: CustomThemeData
                                              .colors.inputTextColor),
                                ),
                                SizedBox(
                                  width: 0.02.sw,
                                ),
                                Expanded(
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard  ",
                                    style: CustomThemeData.fonts.pageExtrabold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.02.sh),
                          Row(
                            children: [
                              Text(
                                "Advert Price:",
                                style: CustomThemeData.fonts.pageBold.copyWith(
                                    color:
                                        CustomThemeData.colors.inputTextColor),
                              ),
                              SizedBox(
                                width: 0.02.sw,
                              ),
                              Text(
                                "1000 TL",
                                style: CustomThemeData.fonts.pageExtrabold,
                              ),
                            ],
                          ),
                          SizedBox(height: 0.02.sh),
                          Padding(
                            padding: CustomThemeData.ui.pagePaddingW * 2,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DormView()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: CustomThemeData
                                          .colors.inputTextColor
                                          .withOpacity(0.3),
                                      blurRadius: 10,
                                      offset: const Offset(0, 10),
                                    )
                                  ],
                                  borderRadius: CustomThemeData.ui.borderRadius,
                                  color: CustomThemeData.colors.darkblueColor,
                                ),
                                height: 0.05.sh,
                                child: Center(
                                  child: Text(
                                    "Send Message",
                                    style: CustomThemeData.fonts.adTitle
                                        .copyWith(
                                            color:
                                                CustomThemeData.colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
