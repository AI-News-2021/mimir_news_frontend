import 'package:flutter/material.dart';

import '../components/dot.dart';
import '../components/line.dart';

class TimeStampForeground extends StatelessWidget {
  final bool? first;
  final String timeStempData;

  TimeStampForeground({
    this.first,
    required this.timeStempData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Column(
            children: [
              if (first == null || first == false)
                Line(
                  height: 10,
                )
              else
                Container(
                  height: 10,
                ),
              Dot(),
              Line(
                height: 10,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              timeStempData,
              style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xff999da3),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          )
        ],
      );
  }
}
