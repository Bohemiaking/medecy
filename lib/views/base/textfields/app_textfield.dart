// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';

class AppTextField extends StatefulWidget {
  final txtData;
  final hintData;
  bool isPassword;
  AppTextField(
      {super.key, this.txtData, this.hintData, required this.isPassword});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.txtData,
          style: textMedium().copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: width(context) / 1,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            obscureText: widget.isPassword
                ? obscure
                    ? false
                    : true
                : false,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                border: InputBorder.none,
                hintText: widget.hintData,
                hintStyle: textMedium().copyWith(fontSize: 13.0),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: obscure
                            ? const Icon(Icons.remove_red_eye_rounded)
                            : const Icon(Icons.remove_red_eye_outlined),
                        splashRadius: 20,
                      )
                    : const SizedBox.shrink()),
          ),
        )
      ],
    );
  }
}
