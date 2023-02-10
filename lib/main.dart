import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentaroof_agent/controllers/constants/app_constants.dart';
import 'package:rentaroof_agent/controllers/constants/app_routes.dart';
import 'package:rentaroof_agent/controllers/constants/app_theme.dart';
import 'package:rentaroof_agent/controllers/cubits/auth/auth_cubit.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        title: AppConstants.appName,
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        onGenerateRoute: Routes.onGenerateRoute,
        initialRoute: 'splash',
      ),
    );
  }
}
