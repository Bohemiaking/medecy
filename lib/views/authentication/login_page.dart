import 'package:flutter/material.dart';
import 'package:rentaroof_agent/constants/app_assets.dart';
import 'package:rentaroof_agent/constants/app_dimensions.dart';
import 'package:rentaroof_agent/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/app_textfield.dart';

import '../base/app_textunderline.dart';
import '../base/imagetextstack_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const route = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const ImageTextStackContainer(),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                width: width(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const AppTextUnderline(),
                    const SizedBox(
                      height: 28,
                    ),
                    AppTextField(
                      isPassword: false,
                      txtData: "Email id/Mobile No.",
                      hintData: "Enter your Email id/Mobile No.",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      isPassword: true,
                      txtData: "Password",
                      hintData: "Enter your password",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
