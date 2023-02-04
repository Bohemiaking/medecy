import 'package:flutter/material.dart';
import 'package:rentaroof_agent/constants/app_assets.dart';
import 'package:rentaroof_agent/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';

import '../base/imageTextStack_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const route = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
          child: Column(
        children: [
          ImageTextStackContainer(),
        ],
      )),
    );
  }
}
