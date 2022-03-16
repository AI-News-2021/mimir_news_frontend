import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthProvider extends GetConnect {
  final storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  void addTokenToRequest() {
    httpClient.addRequestModifier<dynamic>((request) {
      String token = storage.read('token');
      request.headers['Authorization'] = 'Bearer $token';
      return request;
    });
  }

  Future<Response> getAuth() => get('http://192.168.1.20:3000/auth');

  Future<Response> login(String email, String password) => post(
      'http://192.168.1.20:3000/auth/login',
      {'email': email, 'password': password});
}