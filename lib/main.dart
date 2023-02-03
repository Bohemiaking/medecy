import 'package:flutter/material.dart';
import 'package:rentaroof_agent/constants/app_constants.dart';
import 'package:rentaroof_agent/constants/app_routes.dart';
import 'package:rentaroof_agent/constants/app_theme.dart';
import 'package:rentaroof_agent/views/message_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const MessagePage(),
      routes: appRoutes(context),
    );
  }
}