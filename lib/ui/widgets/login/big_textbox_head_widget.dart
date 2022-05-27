import 'package:flutter/material.dart';

class BigTextboxHeadWidget extends StatelessWidget {
  final bigButtonTextHead;
  final alignment;

  BigTextboxHeadWidget({
    required this.bigButtonTextHead,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft ,
            child: Text(
              bigButtonTextHead,
              style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xffcbd0d8),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            )

    );
  }
}
