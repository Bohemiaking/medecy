import 'package:flutter/material.dart';
import 'package:rentaroof_agent/constants/app_dimensions.dart';
import 'package:rentaroof_agent/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/textfields/app_textfield.dart';
import 'package:rentaroof_agent/views/base/imagetextstack.dart';
import 'package:rentaroof_agent/views/base/textfields/select_textfield.dart';

import '../base/app_textunderline.dart';

class SignupCreateprofilePage extends StatefulWidget {
  const SignupCreateprofilePage({super.key});

  @override
  State<SignupCreateprofilePage> createState() =>
      _SignupCreateprofilePageState();
}

class _SignupCreateprofilePageState extends State<SignupCreateprofilePage> {
  // use this String variable for user type
  String? userTypeGroup;

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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: SelectTextField(
                                  txtData: "Gender",
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: SelectTextField(
                                  txtData: "DOB",
                                ),
                              ),
                            )
                          ],
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
