import 'package:flutter/material.dart';

class AppTextUnderline extends StatelessWidget {
  double width;
  AppTextUnderline({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: width,
      decoration: BoxDecoration(
          color: const Color(0xfff47622),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}
