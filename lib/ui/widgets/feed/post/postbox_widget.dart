import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:get/get.dart';
import '../../../../functions/routes/route.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

class PostBoxWidget extends StatefulWidget {
  const PostBoxWidget({Key? key}) : super(key: key);

  @override
  State<PostBoxWidget> createState() => _PostBoxWidget();
}

class _PostBoxWidget extends State<PostBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 363,
          //height: 356,
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
                child: Container(
                  height: 10,
                  width: 2.5,
                  //height: 356,
                  //padding: const EdgeInsets.only(left: 21.2, top: 0, bottom: 0, right: 0),
                  margin: const EdgeInsets.only(left: 20, top: 0, bottom: 0, right: 0),
                  //padding: const EdgeInsets.only(left: 4.5, top: 3, bottom: 0, right: 3.5),
                  decoration: BoxDecoration(
                    color: Color(0xff999da3),
                    //border: Border.all(color: Color(0xff999da3), width: 10.0),
                    //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),

                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.adjust,
                          color: Color(0xff999da3),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            '6 hours ago',
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xff999da3),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 10,
                  width: 2.5,
                  //height: 356,
                  //padding: const EdgeInsets.only(left: 21.2, top: 0, bottom: 0, right: 0),
                  margin: const EdgeInsets.only(left: 21, top: 0, bottom: 0, right: 0),
                  //padding: const EdgeInsets.only(left: 4.5, top: 3, bottom: 0, right: 3.5),
                  decoration: BoxDecoration(
                    color: Color(0xff999da3),
                    //border: Border.all(color: Color(0xff999da3), width: 10.0),
                    //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),

                ),
              ),
              Image.asset(
                'assets/banner_post.png',
                //scale: 25,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 10, right: 18, top: 10, bottom: 0),
                      child: Text(
                        'Facebook’s Mark Zuckerberg announces the Metaverse.',
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff4e5155),
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left,
                      ))),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    padding: const EdgeInsets.only(
                        left: 4.5, top: 3, bottom: 3, right: 3.5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff999da3), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.group,
                            color: Color(0xff999da3),
                            size: 10,
                          ),),
                        Text(
                          '130',
                          style: const TextStyle(
                              fontSize: 9,
                              color: Color(0xff999da3),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Publications',
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xff999da3),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.left,
                          ))),
                ],
              ),

            ],
          ),

        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 15,
              width: 2.5,
              //height: 356,
              //padding: const EdgeInsets.only(left: 21.2, top: 0, bottom: 0, right: 0),
              margin: EdgeInsets.only(left: 19, top: 0, bottom: 0, right: 0),
              //padding: const EdgeInsets.only(left: 4.5, top: 3, bottom: 0, right: 3.5),
              decoration: BoxDecoration(
                color: Color(0xff999da3),
                //border: Border.all(color: Color(0xff999da3), width: 10.0),
                //borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),

            ),
          ),
        ),
      ],
    );

  }
}
