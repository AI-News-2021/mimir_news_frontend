import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';


class Login_Page extends StatelessWidget {


  var _loginuser_textbox_head = 'Username';
  var _loginpassword_textbox_head = 'Password';


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Image.asset('assets/login_logo.png'),
          ),
          //Big_textbox(bigButtonText: _loginpage_content),
          Big_textbox_head(bigButtonTextHead: _loginuser_textbox_head),
          BigTextBoxWidget(
            hintText: 'Username or Email',
            prefixIconData: Icons.mail_outline,
            suffixIconData: Icons.mail_outline,
            obscureText: false,
            //onChanged: true,
          ),
          Big_textbox_head(bigButtonTextHead: _loginpassword_textbox_head),
          SizedBox(
            height: 10.0,
          ), // gegebenenfalls löschen
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigTextBoxWidget(
                hintText: 'Password',
                prefixIconData: Icons.lock_outline,
                suffixIconData: Icons.lock_outline,
                obscureText: false,
                //onChanged: true,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Forgot password?',
                style: TextStyle(
                  color: Color(0xff584cde),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          BigButtonWidget(
            title: 'Login',
            hasBorder: true,
          ),
          SizedBox(
            height: 10.0,
          ), // gegebenenfalls löschen
          BigButtonWidget(
            title: 'Sign Up',
            hasBorder: false,
          ),
        ],
      ),
    );
  }
}
