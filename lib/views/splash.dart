// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentaroof_agent/utils/constants/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();

// _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, "login", (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 70.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFFC1E3FD),
              Color(0XFFF1F6FD),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          // image: DecorationImage(
          //     image: AssetImage("assets/splashbg.png"), fit: BoxFit.fitHeight),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 0.0,
              ),
              child: SvgPicture.asset(
                AppAssets.logo,
                height: 130,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Image.asset(
                AppAssets.splashScreenImg,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
