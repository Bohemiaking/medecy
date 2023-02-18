import 'package:flutter/material.dart';
import 'package:rentaroof_agent/utils/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/buttons/underline_text_button.dart';
import 'package:rentaroof_agent/views/base/enqProperty_container.dart';
import 'package:rentaroof_agent/views/base/property_container.dart';

import '../utils/constants/app_theme.dart';

class HouseVisitPage extends StatelessWidget {
  const HouseVisitPage({super.key});

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
          "House Visits",
          style: textApp(),
        ),
        verticalSpace(24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppButton(
                height: 43.0,
                width: 70.0,
                isColorFilled: false,
                color: Colors.orange,
                txtdata: "Pending"),
            AppButton(
                height: 43.0,
                width: 95.0,
                isColorFilled: false,
                color: Color(0xff777777),
                txtdata: "Completed"),
            AppButton(
                color: Color(0xff777777),
                height: 43.0,
                width: 85.0,
                isColorFilled: false,
                txtdata: "Canceled"),
            AppButton(
                color: Color(0xff777777),
                height: 43.0,
                width: 90.0,
                isColorFilled: false,
                txtdata: "Requested"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming Visits :",
                  style: textApp(),
                ),
                Text(
                  "Today (14 Visits)",
                  style: textMedium(),
                ),
              ],
            ),
            const UnderlineTextButton(
              txtData: "Filter",
            )
          ],
        ),
        verticalSpace(26.0),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffE2E2E2),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Property(),
                verticalSpace(15.0),
                Text(
                  "Scheduled Visits : Today",
                  style: textMedium()
                      .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                EnqProperty(),
                EnqProperty(),
                EnqProperty(),
                EnqProperty(),
                EnqProperty(),
                EnqProperty(),
                EnqProperty(),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
