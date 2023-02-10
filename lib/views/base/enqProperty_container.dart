import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/constants/app_assets.dart';
import '../../controllers/constants/app_dimensions.dart';
import '../../controllers/constants/app_theme.dart';
import 'buttons/app_button.dart';
import 'buttons/underline_text_button.dart';

class EnqProperty extends StatelessWidget {
  const EnqProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 380,
          width: width(context) / 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xffebebeb), width: 2)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.userAvatar,
                      scale: 0.6,
                    ),
                    horizontalSpace(10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ankit Kumar",
                          style: text5c5c5c(),
                        ),
                        Row(
                          children: [
                            Text(
                              "Contact: ",
                              style: text5c5c5c()
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "9856999999",
                              style: text5c5c5c(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppAssets.chatICon),
                            UnderlineTextButton(
                              txtData: "Chat with Tenant",
                              onTap: () {},
                            ),
                            horizontalSpace(40.0),
                            UnderlineTextButton(
                              txtData: "Send Reminders",
                              onTap: () {},
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                verticalSpace(16.0),
                Container(
                  height: 59,
                  decoration: BoxDecoration(
                      color: const Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppAssets.greenTick),
                            const Expanded(
                                child: Divider(
                              color: Color(0xffe9e9e9),
                              thickness: 2,
                            )),
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: const Color(0xffe9e9e9),
                                  borderRadius: BorderRadius.circular(60 / 2)),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Visit Scheduled",
                              style: textGreen().copyWith(fontSize: 12.0),
                            ),
                            Text(
                              "Apply Form",
                              style: text5c5c5c()
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today",
                      style: textGreen(),
                    ),
                    const UnderlineTextButton(
                      txtData: "Verify OTP",
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Date: ",
                          style: text5c5c5c().copyWith(
                              fontWeight: FontWeight.normal, fontSize: 14.0),
                        ),
                        Text(
                          "12 Dec, 2022",
                          style: text5c5c5c().copyWith(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Time: ",
                          style: text5c5c5c().copyWith(
                              fontWeight: FontWeight.normal, fontSize: 14.0),
                        ),
                        Text(
                          "9 Am - 10 Am",
                          style: text5c5c5c().copyWith(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address: ",
                      style:
                          text5c5c5c().copyWith(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "123/30, Garg Bhawan, Shree Ram path,\nNear Defence Colony, Delhi",
                      style:
                          text5c5c5c().copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      color: Colors.orange,
                        height: 49.0,
                        width: 152.0,
                        isColorFilled: true,
                        txtdata: "Reschedule"),
                    AppButton(
                      color: Colors.orange,
                        height: 49.0,
                        width: 152.0,
                        isColorFilled: false,
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
