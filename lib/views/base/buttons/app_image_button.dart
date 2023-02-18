// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:rentaroof_agent/utils/constants/app_theme.dart';

class ImageButton extends StatelessWidget {
  final imageAsset;
  final txtData;
  final onTap;
  const ImageButton({super.key, this.imageAsset, this.txtData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 140,
        decoration: BoxDecoration(
            color: const Color(0xfff9f9f9),
            border: Border.all(color: const Color(0xffebebeb), width: 1),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imageAsset),
              Text(
                txtData,
                style: textMedium().copyWith(fontWeight: FontWeight.bold),
              )
            ],
          )),
        ),
      ),
    );
  }
}
