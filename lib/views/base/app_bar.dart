import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/controllers/constants/app_assets.dart';
import 'package:rentaroof_agent/controllers/constants/app_routes.dart';
import 'package:rentaroof_agent/views/bookmark_page.dart';
import 'package:rentaroof_agent/views/message/message_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';

appBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 80,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Image.asset(
      AppAssets.appLogoBrand,
      scale: 1,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  appNavigation(context, BookMarkPage.route);
                },
                borderRadius: BorderRadius.circular(20),
                child: SvgPicture.asset(AppAssets.heartIcon, height: 40)),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                appNavigation(context, MessagePage.route);
              },
              borderRadius: BorderRadius.circular(20),
              child: SvgPicture.asset(
                AppAssets.chatIcon,
                height: 40,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                appNavigation(context, NotificationPage.route);
              },
              borderRadius: BorderRadius.circular(20),
              child: SvgPicture.asset(
                AppAssets.bellIcon,
                height: 40,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              AppAssets.searchIcon,
              height: 20,
            ),
            const SizedBox(
              width: 3,
            ),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.menu,
                color: Color(0xffF47622),
                size: 25,
              ),
              splashRadius: 20,
            )
          ],
        ),
      )
    ],
  );
}
