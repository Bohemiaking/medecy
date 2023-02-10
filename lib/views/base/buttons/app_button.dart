// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';

class AppButton extends StatelessWidget {
  double height;
  double width;
  final onTap;
  final color;
  bool isColorFilled;
  String txtdata;
  AppButton(
      {super.key,
      required this.height,
      required this.width,
      this.onTap,
      required this.isColorFilled,
      required this.txtdata,
      this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isColorFilled
                ? const Color(0xffF47622)
                : const Color(0xfff9f9f9),
            border: isColorFilled ? null : Border.all(color: color, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Text(
              txtdata,
              style: textApp().copyWith(
                  color: isColorFilled
                      ? const Color(0xfff9f9f9)
                      : const Color(0xffF47622)),
            ),
          ),
        ),
      ),
    );
  }
}
