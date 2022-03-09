import 'package:flutter/material.dart';

class Undefined_page extends StatelessWidget {
  final name;
  const Undefined_page({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Router for $name is not defined'),
      ),
    );
  }
}
