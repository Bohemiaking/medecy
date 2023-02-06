// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../controllers/constants/app_theme.dart';

class UnderlineTextButton extends StatelessWidget {
  final onTap;
  final txtData;
  const UnderlineTextButton({
    Key? key,
    this.onTap, this.txtData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        txtData,
        style: textMedium().copyWith(
            color: const Color(0xfff47622),
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
