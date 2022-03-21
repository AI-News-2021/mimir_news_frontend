import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final double height;
  final bool? invisable;

  Line({
    required this.height,
    this.invisable
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 2.5,
      //height: 356,
      //padding: const EdgeInsets.only(left: 21.2, top: 0, bottom: 0, right: 0),

      //margin: EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 0),

      //padding: const EdgeInsets.only(left: 4.5, top: 3, bottom: 0, right: 3.5),
      decoration: BoxDecoration(
        color: Color(0xff999da3),
        //border: Border.all(color: Color(0xff999da3), width: 10.0),
        //borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    );
  }
}
