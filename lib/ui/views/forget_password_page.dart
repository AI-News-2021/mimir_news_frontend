import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui/widgets/big_button_widget.dart';
import '/ui/widgets/big_textbox_widget.dart';
import '/ui/widgets/big_textbox_head.dart';
import 'package:url_launcher/url_launcher.dart';
import '/ui/widgets/go_back_big_button_widget.dart';


class Forget_Password_Page extends StatelessWidget {
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 100.0, left: 15, right: 15),
                    child: Text(
                      'Just enter the E-Mail address you registered with in the input field. We will send you a link to your E-Mail address to reset your password. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff4e5155),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Big_textbox_head(
                          bigButtonTextHead: "Your registered E-Mail Address"),
                      BigTextBoxWidget(
                        hintText: 'example@mail.com',
                        prefixIconData: Icons.mail_outline,
                        suffixIconData: Icons.done,
                        obscureText: false,
                        //onChanged: true,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                       InkWell(
                        child: const Text(
                          'Need Help? Send us a E-Mail.',
                          style: TextStyle(
                              color: Color(0xff584cde),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                          onTap: () {
                            const url = 'mailto:email@example.com';
                            _launchURL(url);
                          }
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                  BigButtonWidget(
                    title: 'Send me a link to reset the password',
                    hasBorder: true,
                    buttonFunction: 'Sign_Up_Page',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ), // gegebenenfalls löschen
                  GoBackBigButtonWidget(
                    title: 'Go back',
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
  _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
