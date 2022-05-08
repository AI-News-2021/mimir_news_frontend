import 'package:flutter/material.dart';
import '../components/dot.dart';
import '../components/line.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimeStampForeground extends StatelessWidget {
  final bool? first;
  final DateTime timeStempData;

  TimeStampForeground({
    this.first,
    required this.timeStempData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0),
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
              padding: EdgeInsets.only(left: 5),
              child: Text(
                timeago.format(timeStempData, locale: 'en_short'),
                style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xff999da3),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
    );
  }
}
