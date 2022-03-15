import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  // Post request
  Future<Response> login() => post('http://192.168.1.20:3000/auth/login',
      {'email': 'testemail@mail.com', 'password': '123'});
}
