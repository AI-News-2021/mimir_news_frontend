import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/views/sign_up_page.dart';

class BigButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;
  final buttonFunction;

  BigButtonWidget({
    required this.title,
    required this.hasBorder,
    required this.buttonFunction,
  });

  // void login_button_pressed() {
  //   print('Login Clicked');
//  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: Ink(
          decoration: BoxDecoration(

            gradient: const LinearGradient(
              begin: Alignment(-1.0, -1.0),
              end: Alignment(1.0, 1.0),
              colors: [Color(0xff944cde), Color(0xff584cde)],
              stops: [0.0, 1.0],
            ),


            color: !hasBorder ? Color(0xffffff) : Color(0xff584cde),
            borderRadius: BorderRadius.circular(5.0),
            border: !hasBorder
                ? Border.all(
                    color: Color(0xff584cde),
                    width: 1.0,
                  )
                : Border.fromBorderSide(BorderSide.none),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 60.0,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: hasBorder ? Color(0xffffffff) : Color(0xff584cde),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => Sign_Up_Page())
            )
          ),
        ),
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }

}
