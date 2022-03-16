import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:get/get.dart';
import '../../../../functions/routes/route.dart';

class PostBoxWidget extends StatefulWidget {
  const PostBoxWidget({Key? key}) : super(key: key);

  @override
  State<PostBoxWidget> createState() => _PostBoxWidget();
}

class _PostBoxWidget extends State<PostBoxWidget> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      decoration: new BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 25, top:10, bottom: 3),
                  child: Text(
                    '6 hours ago',
                    style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xff999da3),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  )
              )
          ),

          Image.asset(
            'assets/banner_post.png',
            //scale: 25,
          ),


          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 18, right: 18, top:10, bottom: 10),
                  child: Text(
                    'Facebook’s Mark Zuckerberg announces the Metaverse.',
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xff4e5155),
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  )
              )
          ),

          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 25, top:10, bottom: 10),
                  child: Text(
                    '13 Publications',
                    style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xff999da3),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  )
              )
          ),
        ],
      ),
    );
  }
}
