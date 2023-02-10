import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
            "Notification",
            style: textApp(),
          ),
          const SizedBox(
            height: 44,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return notificationContainer();
            },
          )
        ],
      ),
    );
  }

  Widget notificationContainer() {
    return Column(
      children: [
        Container(
          height: 103,
          width: 343,
          decoration: BoxDecoration(
              color: const Color(0xfff9f9f9),
              border: Border.all(
                width: 1,
                color: const Color(0xffEBEBEB),
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Agreement Created 🎉",
                      style: TextStyle(
                          color: Color(0xff777777),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      "DD/MM/YYYY",
                      style: TextStyle(color: Color(0xff777777), fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Agreement created for property - RARP-0974250. Please check now",
                  style: TextStyle(color: Color(0xff777777), fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
