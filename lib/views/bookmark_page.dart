import 'package:flutter/material.dart';
import 'package:rentaroof_agent/utils/constants/app_assets.dart';
import 'package:rentaroof_agent/utils/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/buttons/app_image_button.dart';

import '../utils/constants/app_theme.dart';
import 'base/buttons/underline_text_button.dart';

class BookMarkPage extends StatelessWidget {
  const BookMarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            "Bookmarks",
            style: textApp(),
          ),
          const SizedBox(
            height: 32,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: ((context, index) {
                return bookmarkedContainer(context);
              }))
        ],
      ),
    );
  }

  Widget bookmarkedContainer(context) {
    return Column(
      children: [
        Container(
          height: 592,
          width: width(context) / 1,
          decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xffe2e2e2), width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.propertyImage,
                  scale: 0.2,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "75,000",
                      style: textApp().copyWith(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Text("/ month",
                        style: textApp().copyWith(fontWeight: FontWeight.w100)),
                    const SizedBox(
                      width: 12,
                    ),
                    AppButton(
                        color: Colors.orange,
                        height: 30.0,
                        width: 110,
                        isColorFilled: false,
                        txtdata: "1034 sq.ft ⌄")
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "3BHK Near Defense Colony, Delhi",
                  style: textApp(),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "DDA Apartment - Shantusti Apartment",
                  style: textApp().copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 8,
                ),
                const UnderlineTextButton(
                  txtData: "View Details >>",
                ),
                const SizedBox(
                  height: 16,
                ),
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 47.5),
                  children: const [
                    ImageButton(
                        imageAsset: AppAssets.bedIcon, txtData: "3 BHK"),
                    ImageButton(
                      imageAsset: AppAssets.bathtubIcon,
                      txtData: "3 Bathroom",
                    ),
                    ImageButton(
                      imageAsset: AppAssets.buildingIcon,
                      txtData: "3rd Floor",
                    ),
                    ImageButton(
                      imageAsset: AppAssets.sofaIcon,
                      txtData: "Furnished",
                    ),
                    ImageButton(
                      imageAsset: AppAssets.buildingIcon,
                      txtData: "3 Balcony",
                    ),
                    ImageButton(
                      imageAsset: AppAssets.sofaIcon,
                      txtData: "3 Bathroom",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppButton(
                        height: 49.0,
                        width: 152.0,
                        isColorFilled: true,
                        color: Colors.orange,
                        txtdata: "Reschedule"),
                    AppButton(
                        height: 49.0,
                        width: 152.0,
                        isColorFilled: false,
                        color: Colors.orange,
                        txtdata: "Cancel Visit"),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
