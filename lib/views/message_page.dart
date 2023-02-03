import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentaroof_agent/constants/app_assets.dart';
import 'package:rentaroof_agent/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';

import '../constants/app_theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              "Messages",
              style: textApp(),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: height(context) / 1.4,
              width: width(context) / 0.9,
              decoration: BoxDecoration(
                  color: const Color(0xffD9E9FE),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    messageSearch(),
                    const SizedBox(
                      height: 26,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: ((context, index) {
                          return messageContainer();
                        }))
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget messageSearch() {
    return Column(
      children: [
        Container(
          width: 323,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(right: 20, left: 20),
                prefixIcon: Icon(Icons.search),
                hintText: "Search ...",
                hintStyle: TextStyle(color: Color(0xffA7A7A7), fontSize: 16)),
          ),
        )
      ],
    );
  }

  Widget messageContainer() {
    return Column(
      children: [
        Container(
          height: 71,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.defUserIcon,
                  scale: 0.8,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dharmendra Yadav",
                      style: textMedium().copyWith(
                          color: const Color(0xff5C5C5C),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Last Seen",
                      style: textMedium(),
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  "4:40 PM",
                  style: textMedium().copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
