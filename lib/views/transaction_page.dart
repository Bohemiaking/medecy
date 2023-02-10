import 'package:flutter/material.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';

import '../controllers/constants/app_dimensions.dart';
import '../controllers/constants/app_theme.dart';
import 'base/buttons/app_button.dart';
import 'base/buttons/underline_text_button.dart';
import 'base/enqProperty_container.dart';
import 'base/property_container.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

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
          "Payments",
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
                txtdata: "Paid"),
            AppButton(
                height: 43.0,
                width: 95.0,
                isColorFilled: false,
                color: const Color(0xff777777),
                txtdata: "Unpaid"),
            AppButton(
                color: const Color(0xff777777),
                height: 43.0,
                width: 120.0,
                isColorFilled: false,
                txtdata: "Comissioned"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Unpaid Payments :",
              style: textApp(),
            ),
            const UnderlineTextButton(
              txtData: "Filter",
            )
          ],
        ),
        verticalSpace(26.0),
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 22,
              mainAxisSpacing: 25,
              mainAxisExtent: 130),
          children: [
            dbinfoContainer("\u{20B9}${3500}", "Total Comission Earned"),
            dbinfoContainer("\u{20B9}${3500}", "Last Week"),
            dbinfoContainer("\u{20B9}${3500}", "Last Week"),
            dbinfoContainer("3", "Total Tenants"),
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

  Widget dbinfoContainer(numData, titledata) {
    return Container(
      height: 100,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffEBEBEB), width: 2)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              numData,
              style: textOrange(),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              titledata,
              style: textMedium().copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
