import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/controllers/constants/app_assets.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';

import '../controllers/constants/app_theme.dart';
import 'base/app_scaffold.dart';

class ReferfriendPage extends StatelessWidget {
  const ReferfriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          "Refer A Friend",
          style: textApp(),
        ),
        const SizedBox(
          height: 24,
        ),
        referBanner(context),
        verticalSpace(50.0),
        referralStats(context),
        verticalSpace(50.0),
        Text(
          "Referrals",
          style: textApp().copyWith(fontSize: 24.0),
        ),
        verticalSpace(12.0),
        Row(
          children: [
            AppButton(
                height: 43.0,
                width: 79.0,
                isColorFilled: false,
                txtdata: "Invited"),
            horizontalSpace(10.0),
            AppButton(
                height: 43.0,
                width: 100.0,
                isColorFilled: false,
                txtdata: "Accepted")
          ],
        ),
        verticalSpace(10.0),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: ((context, index) {
              return referrals(context);
            }))
      ]),
    );
  }

  Widget referBanner(context) {
    return Stack(
      children: [
        SizedBox(
          height: 335,
          child: Container(
            height: 321,
            width: width(context) / 1,
            decoration: BoxDecoration(
                color: Color(0xff054F8A),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Invite a Friend",
                    style: textWhite().copyWith(fontSize: 24.0),
                  ),
                  verticalSpace(30.0),
                  referralsubBanner(),
                ],
              ),
            ),
          ),
        ),
        Positioned(top: 305, left: 34, child: referalCode())
      ],
    );
  }

  Widget referralsubBanner() {
    return Container(
      height: 205,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "You Get",
                  style: textMedium().copyWith(color: Color(0xff474747)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(AppAssets.girlPhoto),
                ),
                Text(
                  "Exciting Discounts\non Payment",
                  style: textMedium().copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(27.0),
              child: VerticalDivider(
                color: Color(0xff474747),
                thickness: 0.5,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "You Get",
                  style: textMedium().copyWith(color: Color(0xff474747)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    AppAssets.boyPhoto,
                    scale: 0.95,
                  ),
                ),
                Text(
                  "Exciting Discounts\non Payment",
                  style: textMedium().copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget referalCode() {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 298.89,
          decoration: BoxDecoration(
              color: const Color(0xffEBEBEB),
              borderRadius: BorderRadius.circular(9.75)),
        ),
        Positioned(
          left: 60,
          top: 5,
          child: SizedBox(
            width: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Referal Code : ",
                    style: textMedium().copyWith(
                      color: Color(0xff474747),
                    )),
                Text(
                  "ABCDEFG",
                  style: textMedium().copyWith(
                      color: Color(0xff474747), fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(AppAssets.copyIcon),
                SvgPicture.asset(AppAssets.shareIcon)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget referralStats(context) {
    return Container(
      width: width(context) / 1,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Statistics",
              style: textApp().copyWith(fontSize: 24.0),
            ),
            verticalSpace(24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Referrals",
                      style: textMedium().copyWith(fontSize: 20.0),
                    ),
                    verticalSpace(8.0),
                    Text(
                      "16",
                      style: textMedium().copyWith(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rewards",
                      style: textMedium().copyWith(fontSize: 20.0),
                    ),
                    verticalSpace(8.0),
                    Text(
                      "\u{20B9}${50}",
                      style: textMedium().copyWith(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget referrals(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: width(context) / 1,
        height: 66,
        decoration: BoxDecoration(
            color: const Color(0xfff9f9f9),
            border: Border.all(color: const Color(0xffebebeb), width: 1),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xffCEDEF4),
                    borderRadius: BorderRadius.circular(60 / 2)),
                child: Center(
                  child: Text(
                    "A",
                    style: textWhite().copyWith(color: Color(0xff2c2c2c)),
                  ),
                ),
              ),
              horizontalSpace(24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akash Gard",
                    style: textMedium()
                        .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+91-9664143560",
                    style: textMedium(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
