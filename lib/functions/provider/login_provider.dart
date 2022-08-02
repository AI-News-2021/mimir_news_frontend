import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  // Post request
  Future<Response> login() => post('http://130.61.250.130:3000/auth/login',
      {'email': 'testemail@mail.com', 'password': '123'});
}
