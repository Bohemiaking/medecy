import 'package:flutter/material.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';

appRoutes(BuildContext context){
  return{
    LoginPage.route: (context) => const LoginPage(),
    NotificationPage.route: (context) => const NotificationPage()
  };
}