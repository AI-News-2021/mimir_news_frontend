import 'package:flutter/material.dart';

class BigTextBoxWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  //final Function onChanged;

  BigTextBoxWidget(
      {required this.hintText,
      required this.prefixIconData,
      required this.suffixIconData,
      required this.obscureText,
      //required this.onChanged,

      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        //onChanged: onChanged,
        obscureText: obscureText,
        style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color(0xff4e5155),
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Icon(
            prefixIconData,
            size: 25,
            color: Color(0xff584cde),
          ),
          filled: true,
          fillColor: Color(0xffffffff),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          suffixIcon: Icon(
            prefixIconData,
            size: 18,
            color: Color(0xffcbd0d8),
          ),
          labelStyle: TextStyle(
            color: Color(0xff4e5155),
            //focusColor: color: Color(0xffcbd0d8),
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x33000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }
}
