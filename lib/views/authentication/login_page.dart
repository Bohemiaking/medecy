import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const route = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }
}
