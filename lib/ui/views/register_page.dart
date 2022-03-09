import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/router/router.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';
import 'package:url_launcher/url_launcher.dart';


class Register_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          alignment: FractionalOffset.bottomCenter,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Big_textbox_head(bigButtonTextHead: 'Choose username'),
                          BigTextBoxWidget(
                            hintText: 'Username',
                            prefixIconData: Icons.person_outline,
                            suffixIconData: Icons.close,
                            autocorrect: false,
                            passwordField: false,
                            //onChanged: true,
                          ),
                          Big_textbox_head(bigButtonTextHead: 'Your E-Mail address'),
                          BigTextBoxWidget(
                            hintText: 'example@mail.com',
                            prefixIconData: Icons.mail_outline,
                            suffixIconData: Icons.close,
                            autocorrect: false,
                            passwordField: false,
                            //onChanged: true,
                          ),
                          Big_textbox_head(bigButtonTextHead: 'Choose password'),
                          BigTextBoxWidget(
                            hintText: 'Password',
                            prefixIconData: Icons.lock_outline,
                            suffixIconData: Icons.close,
                            autocorrect: false,
                            passwordField: true,
                            //onChanged: true,
                          ),

                          Big_textbox_head(bigButtonTextHead: 'Repeat password'),
                          BigTextBoxWidget(
                            hintText: 'Password',
                            prefixIconData: Icons.lock_outline,
                            suffixIconData: Icons.close,
                            autocorrect: false,
                            passwordField: true,
                            //onChanged: true,
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 15, right: 15),
                            child: Text(
                              'By tapping "Register", you agree to our Terms of Use. Our Data Policy explains how we collect, use, and share your data. Our Cookie Policy explains how we use cookies and similar technologies. Mímir may send you notifications via SMS, which you can unsubscribe from at any time.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff4e5155),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          InkWell(
                            child: const Text(
                              'Read Terms of Use?',
                              style: TextStyle(
                                  color: Color(0xff584cde),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),

                            ),
                              onTap: () {
                                 const url = 'https://mimirnews.com/';
                                _launchURL(url);
                              },
                              borderRadius: BorderRadius.circular(5.0),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                      BigButtonWidget(
                        title: 'Register',
                        hasBorder: true,
                        buttonFunction: MimirRouter.ROUTE_REGISTER,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ), // gegebenenfalls löschen
                      BigButtonWidget(
                        title: 'Go back to Login',
                        hasBorder: false,
                        buttonFunction: MimirRouter.ROUTE_POP,
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
  _launchURL(String url) async {
    if (!await launch(url, forceWebView: true)) throw 'Could not launch $url';
  }
}
