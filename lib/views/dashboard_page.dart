import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_assets.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';

import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/app_drawer.dart';
import 'package:rentaroof_agent/views/base/buttons/underline_text_button.dart';

import '../controllers/constants/app_theme.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      endDrawer: const AppDrawer(),
      body: SizedBox(
        height: height(context),
        child: SafeArea(
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                width: width(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 24, left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Dashboard",
                        style: textApp(),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 22,
                                mainAxisSpacing: 25,
                                mainAxisExtent: 130),
                        children: [
                          dbinfoContainer("3", "Total Listed Properties"),
                          dbinfoContainer("3", "Pending Documentation"),
                          dbinfoContainer("3", "Pending Owner's Request"),
                          dbinfoContainer(
                              "\u{20B9}${30000}", "Total Comission Earned"),
                        ],
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      dbScheduledVisitsContainer(context),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
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

  Widget dbScheduledVisitsContainer(context) {
    return Container(
      width: width(context) / 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffEBEBEB), width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Agent Name",
                style: textMedium().copyWith(fontSize: 14.0),
              ),
              Text(
                "Timings",
                style: textMedium().copyWith(fontSize: 14.0),
              ),
              Text(
                "Action",
                style: textMedium().copyWith(fontSize: 14.0),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return visitsinfoContainer();
            },
          )
        ]),
      ),
    );
  }

  Widget visitsinfoContainer() {
    return SizedBox(
      child: Column(
        children: [
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.userAvatar),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ankit Kumar",
                    style: textMedium().copyWith(
                        color: const Color(0xff5c5c5c),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                "12:00 -\n1:00 PM",
                style: textMedium(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  UnderlineTextButton(
                    txtData: "Reschedule Visit",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  UnderlineTextButton(
                    txtData: "Cancel Visit",
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
