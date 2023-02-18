import 'package:flutter/material.dart';
import 'package:rentaroof_agent/utils/constants/app_theme.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircularProgressIndicator(),
          Text(
            "Please Wait\nLoading ...",
            style: textOrange().copyWith(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}
