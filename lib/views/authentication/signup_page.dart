import 'package:flutter/material.dart';
import 'package:rentaroof_agent/constants/app_dimensions.dart';
import 'package:rentaroof_agent/constants/app_routes.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/imagetextstack.dart';
import 'package:rentaroof_agent/views/base/textfields/app_textfield.dart';

import '../../constants/app_theme.dart';
import '../base/app_textunderline.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  static const route = 'signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SizedBox(
          height: height(context),
          child: SafeArea(
              child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                const ImageTextStackContainer(),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: width(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        AppTextUnderline(
                          width: 58.0,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        AppTextField(
                          isPassword: false,
                          txtData: "Phone Number",
                          hintData: "Enter your Phone Number",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextField(
                          isPassword: true,
                          txtData: "Password",
                          hintData: "Enter your Password",
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        AppButton(
                            height: 41.0,
                            width: width(context) / 1,
                            isColorFilled: true,
                            txtdata: "Sign up"),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account ? ",
                              style: textMedium()
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () =>
                                    appNavigation(context, LoginPage.route),
                                child: Text(
                                  "Log in",
                                  style: textApp()
                                      .copyWith(color: const Color(0xffF47622)),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
