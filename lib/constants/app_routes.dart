import 'package:flutter/material.dart';
import 'package:rentaroof_agent/views/authentication/login_page.dart';

appRoutes(BuildContext context){
  return{
    LoginPage.route: (context) => const LoginPage()
  };
}