import 'package:flutter/material.dart';

class Big_textbox_head extends StatelessWidget {
  final bigButtonTextHead;

  Big_textbox_head({required this.bigButtonTextHead});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 10, top: 9, bottom: 3,),
              child: Text(
                bigButtonTextHead,
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffcbd0d8),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              )
          )),
    );
  }
}
