import 'package:flutter/material.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/bookmark_page.dart';
import 'package:rentaroof_agent/views/message/chat_page.dart';
import 'package:rentaroof_agent/views/message/message_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';

appRoutes(BuildContext context) {
  return {
    LoginPage.route: (context) => const LoginPage(),
    NotificationPage.route: (context) => const NotificationPage(),
    BookMarkPage.route: (context) => const BookMarkPage(),
    MessagePage.route: (context) => const MessagePage(),
    ChatPage.route: (context) => const ChatPage(),
  };
}
