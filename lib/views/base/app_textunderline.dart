import 'package:flutter/material.dart';

class AppTextUnderline extends StatelessWidget {
  const AppTextUnderline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 48,
      decoration: BoxDecoration(
          color: Color(0xfff47622), borderRadius: BorderRadius.circular(30)),
    );
  }
}
