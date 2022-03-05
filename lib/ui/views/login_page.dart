import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/views/forget_password_page.dart';
import '../widgets/go_back_big_button_widget.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';
import 'package:mimir_news_frontend/ui/views/sign_up_page.dart';
import '/ui/widgets/go_back_big_button_widget.dart';

class Login_Page extends StatelessWidget {
  var _loginuser_textbox_head = 'Username';
  var _loginpassword_textbox_head = 'Password';



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset('assets/login_logo.png'),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                offset: Offset(0, 3),
                                blurRadius: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Big_textbox_head(
                          bigButtonTextHead: _loginuser_textbox_head),
                      BigTextBoxWidget(
                        hintText: 'Username or Email',
                        prefixIconData: Icons.person_outline,
                        suffixIconData: Icons.done,
                        obscureText: false,
                        //onChanged: true,
                      ),
                      Big_textbox_head(
                          bigButtonTextHead: _loginpassword_textbox_head),
                      BigTextBoxWidget(
                        hintText: 'Password',
                        prefixIconData: Icons.lock_outline,
                        suffixIconData: Icons.visibility,
                        obscureText: false,
                        //onChanged: true,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Color(0xff584cde),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Forget_Password_Page())
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                  BigButtonWidget(
                    title: 'Login',
                    hasBorder: true,
                    buttonFunction: 'Sign_Up_Page',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ), // gegebenenfalls löschen
                  BigButtonWidget(
                    title: 'Register Now',
                    hasBorder: false,
                    buttonFunction: 'Sign_Up_Page',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
