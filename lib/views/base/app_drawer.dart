import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/controllers/constants/app_assets.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () => Scaffold.of(context).closeEndDrawer(),
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xffF47622),
                    size: 30,
                  ),
                  splashRadius: 20,
                ),
              ),
              profileInfo(),
              dashboardTile(),
              const SizedBox(
                height: 50,
              ),
              drawerTiles(AppAssets.houseVisitsIcon, "House Visits"),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 16, bottom: 25),
      child: Container(
        height: 76,
        width: 231,
        decoration: BoxDecoration(
            color: const Color(0xfff7f7f7),
            border: Border.all(color: const Color(0xffebebeb), width: 2),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.defUserIcon,
                  scale: 0.6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dharmendra",
                      style: textApp(),
                    ),
                    const Text(
                      "Agent",
                      style: TextStyle(color: Color(0xffA4A4A4), fontSize: 13),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: const Color(0xffebebeb),
                      borderRadius: BorderRadius.circular(8)),
                  child: IconButton(
                    icon: const Center(
                        child: Icon(
                      Icons.more_horiz,
                      size: 20,
                    )),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboardTile() {
    return Container(
      height: 52,
      width: 248,
      decoration: const BoxDecoration(
          color: Color(0xfff47622),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 29.46),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.dashboard),
            Text(
              "Dashboard",
              style: textWhite(),
            ),
            Container(
              height: 35.18,
              width: 5.28,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget drawerTiles(svgPath, txtdata) {
    return Padding(
      padding: const EdgeInsets.only(left: 45.9, right: 84, bottom: 54),
      child: Row(
        children: [
          SvgPicture.asset(svgPath),
          const SizedBox(
            width: 34.67,
          ),
          Text(
            txtdata,
            style: textWhite().copyWith(
                color: Color(0xff2C2C2C), fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
