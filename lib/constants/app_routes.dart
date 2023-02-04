import 'package:flutter/material.dart';
import 'package:rentaroof_agent/views/authentication/createprofile_page.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/authentication/otp_page.dart';
import 'package:rentaroof_agent/views/authentication/signup_page.dart';
import 'package:rentaroof_agent/views/bookmark_page.dart';
import 'package:rentaroof_agent/views/dashboard_page.dart';
import 'package:rentaroof_agent/views/message/chat_page.dart';
import 'package:rentaroof_agent/views/message/message_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';

appRoutes(BuildContext context) {
  return {
    BookMarkPage.route: (context) => const BookMarkPage(),
    MessagePage.route: (context) => const MessagePage(),
    ChatPage.route: (context) => const ChatPage(),
    NotificationPage.route: (context) => const NotificationPage(),
    LoginPage.route: (context) => const LoginPage(),
    OtpPage.route: (context) => const OtpPage(),
    CreateProfilePage.route: (context) => const CreateProfilePage(),
    SignupPage.route: (context) => const SignupPage(),
    DashboardPage.route: (context) => const DashboardPage()
  };
}

appNavigation(context, route) {
  Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
}

appNavigationPop(context, route) {
  Navigator.pushNamed(context, route);
}
