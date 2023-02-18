import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/utils/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/property_container.dart';

import '../utils/constants/app_assets.dart';
import '../utils/constants/app_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          profileInfo(context),
          verticalSpace(33.0),
          kycContainer(context),
          verticalSpace(40.0),
          Text(
            "Active Listed Properties",
            style: textMedium()
                .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          verticalSpace(16.0),
          const Property(),
          verticalSpace(15.0),
          Text(
            "Unlisted Properties",
            style: textMedium()
                .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          verticalSpace(16.0),
          const Property()
        ],
      ),
    );
  }

  Widget profileInfo(context) {
    return Container(
      width: width(context) / 1,
      decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          border: Border.all(color: const Color(0xffebebeb), width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.defUserIcon,
                scale: 0.4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dharmendra",
                    style: textApp(),
                  ),
                  verticalSpace(10.0),
                  const Text(
                    "Agent",
                    style: TextStyle(color: Color(0xffA4A4A4), fontSize: 13),
                  ),
                  verticalSpace(10.0),
                  const Text(
                    "+91-9634562347 |\nankit.kumar@gmail.com",
                    style: TextStyle(color: Color(0xffA4A4A4), fontSize: 13),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(AppAssets.pencilIcon),
                  SvgPicture.asset(AppAssets.imageIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget kycContainer(context) {
    return Container(
      width: width(context) / 1,
      height: 160,
      decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          border: Border.all(color: const Color(0xffebebeb), width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "KYC Details",
              style: textMedium()
                  .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "You have not completed your KYC",
              style: textMedium().copyWith(fontSize: 14.0),
            ),
            AppButton(
              height: 49,
              width: 311,
              isColorFilled: true,
              txtdata: "Complete KYC now",
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
