import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/views/undefined_page.dart';

import '../views/feed_page.dart';
import '../views/login_page.dart';
import '../views/register_page.dart';




Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => Feed_Page());
    case 'login_rout':
      return MaterialPageRoute(builder: (context) => Login_Page());
    case 'register_rout':
      return MaterialPageRoute(builder: (context) => Register_Page());
    default:
      return MaterialPageRoute(builder: (context) => Undefined_page(name: settings.name));
  }
}