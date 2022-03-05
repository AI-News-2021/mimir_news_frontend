import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';

class Sign_Up_Page extends StatelessWidget {
  var _loginuser_textbox_head = 'Username';
  var _loginpassword_textbox_head = 'Password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Big_textbox_head(bigButtonTextHead: 'Choose username'),
                  BigTextBoxWidget(
                    hintText: 'Username',
                    prefixIconData: Icons.person_outline,
                    suffixIconData: Icons.close,
                    obscureText: false,
                    //onChanged: true,
                  ),
                  Big_textbox_head(bigButtonTextHead: 'Your E-Mail address'),
                  BigTextBoxWidget(
                    hintText: 'example@mail.com',
                    prefixIconData: Icons.mail_outline,
                    suffixIconData: Icons.close,
                    obscureText: false,
                    //onChanged: true,
                  ),
                  Big_textbox_head(bigButtonTextHead: 'Choose password'),
                  BigTextBoxWidget(
                    hintText: 'Password',
                    prefixIconData: Icons.lock_outline,
                    suffixIconData: Icons.close,
                    obscureText: false,
                    //onChanged: true,
                  ),
                  Big_textbox_head(bigButtonTextHead: 'Repeat password'),
                  BigTextBoxWidget(
                    hintText: 'Password',
                    prefixIconData: Icons.lock_outline,
                    suffixIconData: Icons.close,
                    obscureText: false,
                    //onChanged: true,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Read terms of service?',
                    style: TextStyle(
                        color: Color(0xff584cde),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
              BigButtonWidget(
                title: 'Sign Up now',
                hasBorder: true,
                buttonFunction: 'Sign_Up_Page',
              ),
              const SizedBox(
                height: 10.0,
              ), // gegebenenfalls löschen
              BigButtonWidget(
                title: 'Go back to login',
                hasBorder: false,
                buttonFunction: 'Sign_Up_Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
