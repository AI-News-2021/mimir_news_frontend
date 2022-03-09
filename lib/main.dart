import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mimir_news_frontend/ui/router/router.dart' as router;

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {

  bool logged_in = false;


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Mímir News',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: logged_in ? '/' : 'login_rout',
    );
  }
}
