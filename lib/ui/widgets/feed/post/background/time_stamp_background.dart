import 'package:flutter/material.dart';

import '../components/dot.dart';
import '../components/line.dart';

class TimeStampBackground extends StatelessWidget {
  final bool? first;
  final String timeStempData;

  TimeStampBackground({
    this.first,
    required this.timeStempData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
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
            padding: EdgeInsets.only(left: 10),
            child: Text(
              timeStempData,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff4e5155),
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
