import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentaroof_agent/controllers/cubits/auth/auth_cubit.dart';
import 'package:rentaroof_agent/views/applications_page.dart';
import 'package:rentaroof_agent/views/authentication/createprofile_page.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';
import 'package:rentaroof_agent/views/authentication/otp_page.dart';
import 'package:rentaroof_agent/views/authentication/signup_page.dart';
import 'package:rentaroof_agent/views/bookmark_page.dart';
import 'package:rentaroof_agent/views/dashboard_page.dart';
import 'package:rentaroof_agent/views/howtouse_page.dart';
import 'package:rentaroof_agent/views/message/chat_page.dart';
import 'package:rentaroof_agent/views/message/message_page.dart';
import 'package:rentaroof_agent/views/notification_page.dart';
import 'package:rentaroof_agent/views/profile_page.dart';
import 'package:rentaroof_agent/views/referfriend_page.dart';
import 'package:rentaroof_agent/views/splash.dart';
import 'package:rentaroof_agent/views/transaction_page.dart';

import '../../views/HouseVisitPage.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const LoginPage(),
                ));
      case 'createprofile':
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const CreateProfilePage(),
                ));

      case 'otp':
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const OtpPage(),
                ));

      case 'signup':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: SignupPage(
                    name: arguments['name'],
                    email: arguments['email'],
                    role: arguments['role'],
                    category: arguments['category'],
                  ),
                ));

      case 'dashboard':
        return MaterialPageRoute(builder: (context) => DashboardPage());

      case 'chat':
        return MaterialPageRoute(builder: (context) => ChatPage());

      case 'message':
        return MaterialPageRoute(builder: (context) => MessagePage());

      case 'bookmark':
        return MaterialPageRoute(builder: (context) => BookMarkPage());

      case 'notification':
        return MaterialPageRoute(builder: (context) => NotificationPage());

      case 'refer':
        return MaterialPageRoute(builder: (context) => ReferfriendPage());

      case 'howtouse':
        return MaterialPageRoute(builder: (context) => HowtoUsePage());

      case 'housevisits':
        return MaterialPageRoute(builder: (context) => HouseVisitPage());

      case 'applications':
        return MaterialPageRoute(builder: (context) => ApplicationPage());

      case 'transactions':
        return MaterialPageRoute(builder: (context) => TransactionPage());

      case 'profile':
        return MaterialPageRoute(builder: (context) => ProfilePage());

      case 'splash':
        return MaterialPageRoute(builder: (context) => Splash());
    }
  }
}
