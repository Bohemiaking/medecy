import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/constants/app_constants.dart';
import 'package:rentaroof_agent/controllers/constants/app_routes.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';
import 'package:rentaroof_agent/controllers/repositories/user_authentication_repo.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/dashboard_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: appRoutes(context),
    );
  }
}
