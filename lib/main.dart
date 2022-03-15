import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mimir_news_frontend/functions/routes/route.dart';

Future<void> main() async {
  await initServices();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

Future<void> initServices() async {
  print('Initializing services');
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Mímir News',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/loginPage', getPages: Routes.routes
    );
  }
}
