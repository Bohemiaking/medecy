import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/controllers/constants/app_routes.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';
import 'package:rentaroof_agent/controllers/repositories/user_authentication_repo.dart';
import 'package:rentaroof_agent/views/authentication/createprofile_page.dart';
import 'package:rentaroof_agent/views/authentication/otp_page.dart';
import 'package:rentaroof_agent/views/base/textfields/app_textfield.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/buttons/underline_text_button.dart';
import '../base/app_textunderline.dart';
import '../base/imagetextstack.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkbox = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  UserAuthRepo userAuthRepo = UserAuthRepo();

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
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SizedBox(
                  width: width(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                        key: _formKey,
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
                            AppTextField(
                              controller: email,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter a email id";
                                }
                              },
                              isPassword: false,
                              txtData: "Email id/Mobile No.",
                              hintData: "Enter your Email id/Mobile No.",
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
                              hintData: "Enter your password",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: checkbox,
                                        onChanged: ((value) {
                                          setState(() {
                                            checkbox = !checkbox;
                                          });
                                        })),
                                    Text(
                                      "Remember Me",
                                      style:
                                          textMedium().copyWith(fontSize: 14.0),
                                    )
                                  ],
                                ),
                                const UnderlineTextButton(
                                  txtData: "Forgot Password ?",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AppButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              userAuthRepo.userLogin(
                                  email.text, password.text, context);
                            }
                          },
                          height: 41.0,
                          width: width(context) / 1,
                          isColorFilled: true,
                          txtdata: "Login"),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Or",
                        style:
                            textMedium().copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AppButton(
                          height: 41.0,
                          width: width(context) / 1,
                          isColorFilled: false,
                          txtdata: "Request OTP"),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ? ",
                            style: textMedium()
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () =>
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      "createprofile", (route) => false),
                              child: Text(
                                "Sign up",
                                style: textApp()
                                    .copyWith(color: const Color(0xffF47622)),
                              ))
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
}
