import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/controllers/repositories/userAuth_repo.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/imagetextstack.dart';
import 'package:rentaroof_agent/views/base/textfields/app_textfield.dart';

import '../../controllers/constants/app_theme.dart';
import '../base/app_textunderline.dart';

class SignupPage extends StatelessWidget {
  final name;
  final email;
  final category;
  final role;
  SignupPage({super.key, this.name, this.email, this.category, this.role});

  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  UserAuthRepo authRepo = UserAuthRepo();

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
                    child: Form(
                      key: _formKey,
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
                            controller: phonenumber,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a phone number";
                              }
                            },
                            isPassword: false,
                            txtData: "Phone Number",
                            hintData: "Enter your Phone Number",
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            controller: password,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a password";
                              }
                            },
                            isPassword: true,
                            txtData: "Password",
                            hintData: "Enter your Password",
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          AppButton(
                              color: Colors.orange,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  authRepo.userSignup(
                                      name,
                                      email,
                                      phonenumber.text,
                                      role,
                                      password.text,
                                      category);
                                }
                                Navigator.pushNamedAndRemoveUntil(
                                    context, "otp", (route) => false);
                              },
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
                                      Navigator.pushNamedAndRemoveUntil(
                                          context, "login", (route) => false),
                                  child: Text(
                                    "Log in",
                                    style: textApp().copyWith(
                                        color: const Color(0xffF47622)),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
