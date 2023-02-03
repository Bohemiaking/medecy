import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/constants/app_assets.dart';

appBar() {
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
            SvgPicture.asset(AppAssets.heartIcon, height: 40),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              AppAssets.chatIcon,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              AppAssets.bellIcon,
              height: 40,
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
                ))
          ],
        ),
      )
    ],
  );
}
