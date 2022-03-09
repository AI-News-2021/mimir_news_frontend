import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/views/undefined_page.dart';

import '../views/feed_page.dart';
import '../views/login_page.dart';
import '../views/register_page.dart';


class MimirRouter {
  static const ROUTE_LOGIN = 'login_route';
  static const ROUTE_MAIN = '/';
  static const ROUTE_REGISTER = 'register_route';
  static const ROUTE_POP = 'pop_route';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_MAIN:
        return MaterialPageRoute(builder: (context) => Feed_Page());
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (context) => Login_Page());
      case ROUTE_REGISTER:
        return MaterialPageRoute(builder: (context) => Register_Page());
      default:
        return MaterialPageRoute(builder: (context) => Undefined_page(name: settings.name));
    }
  }
}