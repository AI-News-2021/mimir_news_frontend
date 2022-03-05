import 'package:flutter/material.dart';
import './ui/views/login_page.dart';

void main() {
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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        //appBar: AppBar(
          //backgroundColor: Color(0xff574cde),
         // title: Text('Mimir News'),
        //),
        body: Login_Page(),
      ),
    );
  }
}
