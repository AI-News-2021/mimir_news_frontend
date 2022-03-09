import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/views/forget_password_page.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Container(
          alignment: FractionalOffset.bottomCenter,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      if (!isKeyboard)
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: [

                              DropShadowImage(
                                image: Image.asset(
                                  'assets/mimir_logo.png',
                                ),
                                //color: Color(0x33000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),



                              Container(
                                child: Image.asset(
                                  'assets/mimir_text_grey.png',
                                  scale: 4,
                                ),
                              ),
                            ],
                          ),
                        ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Big_textbox_head(bigButtonTextHead: 'Username'),
                          BigTextBoxWidget(
                            hintText: 'Username or Email',
                            prefixIconData: Icons.person_outline,
                            suffixIconData: Icons.done,
                            autocorrect: false,
                            passwordField: false,
                            //onChanged: true,
                          ),
                          //PasswordField(),
                          Big_textbox_head(bigButtonTextHead: 'Password'),
                          BigTextBoxWidget(
                            hintText: 'Password',
                            prefixIconData: Icons.lock_outline,
                            suffixIconData: Icons.visibility,
                            autocorrect: false,
                            passwordField: true,
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
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Forget_Password_Page())),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                      BigButtonWidget(
                        title: 'Login',
                        hasBorder: true,
                        buttonFunction: '/',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ), // gegebenenfalls löschen
                      BigButtonWidget(
                        title: 'Register Now',
                        hasBorder: false,
                        buttonFunction: 'register_rout',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
