import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/controllers/constants/app_routes.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/authentication/signup_page.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/app_dropdown.dart';
import 'package:rentaroof_agent/views/base/textfields/app_textfield.dart';
import 'package:rentaroof_agent/views/base/imagetextstack.dart';

import '../base/app_textunderline.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  static const route = 'createprofile';

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  // use this String variable for user type
  String? userTypeGroup;

  List categoryItems = [
    "Individual",
    "Company",
    "Housewives",
    "Student",
    "Other"
  ];

  String? categoryChoosed;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            usertTypeRadio("Owner"),
                            usertTypeRadio("Agent"),
                            usertTypeRadio("Tenant")
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppTextField(
                          isPassword: false,
                          txtData: "Name",
                          hintData: "Enter your Name",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppDropDown(
                          items: categoryItems,
                          hintText: "Select",
                          value: categoryChoosed,
                          txtData: "Category",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextField(
                          isPassword: false,
                          txtData: "Email id",
                          hintData: "Enter your Email id",
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AppButton(
                            onTap: () =>
                                appNavigationPop(context, SignupPage.route),
                            height: 41.0,
                            width: width(context) / 1,
                            isColorFilled: true,
                            txtdata: "Continue"),
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
                        const SizedBox(
                          height: 28,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))),
    );
  }

  Widget usertTypeRadio(value) {
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: userTypeGroup,
            onChanged: ((value) {
              setState(() {
                userTypeGroup = value.toString();
                print("Selected Role ===> $userTypeGroup");
              });
            })),
        Text(
          value,
          style: textMedium().copyWith(
              fontSize: 16.0,
              color: userTypeGroup == value
                  ? const Color(0xfff47622)
                  : const Color(0xff777777),
              fontWeight:
                  userTypeGroup == value ? FontWeight.bold : FontWeight.w100),
        )
      ],
    );
  }
}
