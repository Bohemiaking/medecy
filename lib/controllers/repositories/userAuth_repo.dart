import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rentaroof_agent/controllers/helper/helper.dart';
import 'package:rentaroof_agent/controllers/repositories/api/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserAuthRepo {
  API api = API();

  Helper helper = Helper();

  void userSignup(name, email, mobile, role, password, category) async {
    try {
      Response response = await api.sendRequest.post("/user/signup", data: {
        "name": name,
        "email": email,
        "mobile": mobile,
        "role": role,
        "password": password,
        "category": category
      });
      if (response.statusCode == 200) {
        await helper.setValue("userID", response.data['user']['id']);
        var userID = await helper.getValue('userID');
        log("userID ========> $userID (use this for OTP verification)");
      }
    } catch (e) {
      rethrow;
    }
  }

  void otpVerify(userID, otp, context) async {
    try {
      Response response = await api.sendRequest.post(
          "/auth/mobile-verification",
          data: {"user_id": userID, "otp": otp});
      if (response.statusCode == 200) {
        Navigator.pushNamedAndRemoveUntil(
            context, "dashboard", (route) => false);
      }
    } catch (e) {
      rethrow;
    }
  }

  void userLogin(email, password, context) async {
    try {
      Response response = await api.sendRequest
          .post("/auth/login", data: {"email": email, "password": password});
      if (response.statusCode == 200) {
        Navigator.pushNamedAndRemoveUntil(
            context, 'dashboard', (route) => false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
