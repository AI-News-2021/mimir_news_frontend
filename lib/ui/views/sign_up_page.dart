import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';
import 'package:url_launcher/url_launcher.dart';
import '/ui/widgets/go_back_big_button_widget.dart';


class Sign_Up_Page extends StatelessWidget {

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



                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                      InkWell(
                        child: const Text(
                          'Read terms of service?',
                          style: TextStyle(
                              color: Color(0xff584cde),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),

                        ),
                          onTap: () {
                             const url = 'https://mimirnews.com/';
                            _launchURL(url);
                          }
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                  BigButtonWidget(
                    title: 'Sign Up Now',
                    hasBorder: true,
                    buttonFunction: 'Sign_Up_Now',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ), // gegebenenfalls löschen
                  GoBackBigButtonWidget(
                    title: 'Go back to Login',
                    hasBorder: false,
                    buttonFunction: 'Go back',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  _launchURL(String url) async {
    if (!await launch(url, forceWebView: true)) throw 'Could not launch $url';
  }
}
