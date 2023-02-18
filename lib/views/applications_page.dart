import 'package:flutter/material.dart';

import '../utils/constants/app_dimensions.dart';
import '../utils/constants/app_theme.dart';
import 'base/app_scaffold.dart';
import 'base/buttons/app_button.dart';
import 'base/buttons/underline_text_button.dart';
import 'base/enqProperty_container.dart';
import 'base/property_container.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

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
          "Manage Applications",
          style: textApp(),
        ),
        verticalSpace(24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                txtdata: "Rejected"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pending Applications :",
              style: textApp(),
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
