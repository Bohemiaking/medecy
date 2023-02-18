import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/utils/constants/app_assets.dart';
import 'package:rentaroof_agent/utils/constants/app_dimensions.dart';
import 'package:rentaroof_agent/utils/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';

class HowtoUsePage extends StatelessWidget {
  const HowtoUsePage({super.key});

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
            "How to use?",
            style: textApp(),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Overview",
            style: textMedium()
                .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          verticalSpace(8.0),
          const Text(
            "Subtext",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          verticalSpace(27.0),
          Image.asset(
            AppAssets.howtouse,
            scale: 0.9,
          ),
          verticalSpace(42.0),
          Text(
            "Overview",
            style: textMedium()
                .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          verticalSpace(8.0),
          const Text(
            "Subtext",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          verticalSpace(15.0),
          SizedBox(
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      AppAssets.howtouse1,
                      scale: 0.5,
                    ),
                  );
                })),
          ),
          verticalSpace(42.0),
          Text(
            "User Manual",
            style: textApp().copyWith(fontSize: 16.0),
          ),
          verticalSpace(10.0),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: ((context, index) {
                return usermanual(context);
              }))
        ],
      ),
    );
  }

  Widget usermanual(context) {
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
                    color: const Color(0xffCEDEF4),
                    borderRadius: BorderRadius.circular(60 / 2)),
                child: Center(child: SvgPicture.asset(AppAssets.downloadIcon)),
              ),
              horizontalSpace(24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: textMedium()
                        .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Read Manaul",
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
