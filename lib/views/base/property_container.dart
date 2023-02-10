import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/constants/app_assets.dart';
import '../../controllers/constants/app_dimensions.dart';
import '../../controllers/constants/app_theme.dart';
import 'buttons/app_button.dart';
import 'buttons/underline_text_button.dart';

class PropertyContainer extends StatelessWidget {
  const PropertyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 515,
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
                Container(
                  height: 159,
                  decoration: const BoxDecoration(
                      color: Color(0xffD9E9FE),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AppAssets.womenProfile),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Tanya Gupta (Owner)",
                                  style: text5c5c5c(),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Contact: ",
                                      style: text5c5c5c().copyWith(
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Text(
                                      "9856999999",
                                      style: text5c5c5c(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(AppAssets.chatICon),
                                UnderlineTextButton(
                                  txtData: "Chat with Owner",
                                  onTap: () {},
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address: ",
                              style: text5c5c5c()
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "123/30, Garg Bhawan, Shree Ram path,\nNear Defence Colony, Delhi",
                              style: text5c5c5c(),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Posted On Date: ",
                              style: text5c5c5c()
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "12 Dec, 2022",
                              style: text5c5c5c(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
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
