import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentaroof_agent/constants/app_dimensions.dart';
import 'package:rentaroof_agent/constants/app_routes.dart';
import 'package:rentaroof_agent/constants/app_theme.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/imagetextstack.dart';
import 'package:rentaroof_agent/views/dashboard_page.dart';

import '../base/app_textunderline.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  static const route = 'otp';

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otp1_4th = TextEditingController();
  TextEditingController otp2_4th = TextEditingController();
  TextEditingController otp3_4th = TextEditingController();
  TextEditingController otp4_4th = TextEditingController();

  // use this string variable to post OTP for API purpose
  late String otpText;

  @override
  void dispose() {
    otp1_4th.dispose();
    otp2_4th.dispose();
    otp3_4th.dispose();
    otp4_4th.dispose();
    super.dispose();
  }

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
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      AppTextUnderline(
                        width: 48.0,
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Text(
                        "Enter OTP",
                        style:
                            textMedium().copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          otpTextField(context, otp1_4th),
                          otpTextField(context, otp2_4th),
                          otpTextField(context, otp3_4th),
                          otpTextField(context, otp4_4th)
                        ],
                      ),
                      const SizedBox(
                        height: 135,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppButton(
                            height: 41.0,
                            width: width(context) / 1,
                            isColorFilled: true,
                            txtdata: "Login",
                            onTap: () {
                              otpText = otp1_4th.text +
                                  otp2_4th.text +
                                  otp3_4th.text +
                                  otp4_4th.text;
                              log(otpText);
                              setState(() {
                                otpText = "";
                              });
                              log("otpText : $otpText");
                              appNavigation(context, DashboardPage.route);
                            },
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't get the OTP ? ",
                                style: textMedium()
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Resend OTP",
                                    style: textApp().copyWith(
                                        color: const Color(0xffF47622)),
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget otpTextField(context, controller) {
    return Container(
      height: 59,
      width: 59,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1.5),
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
