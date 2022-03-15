import 'package:mimir_news_frontend/functions/provider/auth_provider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final storage = GetStorage();
  final authProvider = AuthProvider();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  login(String email, String password) async {
    var response = await authProvider.login(email, password);
    print(response.body);
    if (!response.hasError && response.body != '') {
      storage.write('token', response.body);
      authProvider.addTokenToRequest();
    }
  }

  getAuthInfo() async {
    var response = await authProvider.getAuth();
    print(response.body.toString());
  }
}
