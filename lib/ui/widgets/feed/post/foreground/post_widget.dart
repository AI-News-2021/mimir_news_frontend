import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/post_title_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/publications_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/time_stamp_foreground.dart';

import '../components/image_slider.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    required this.postTimeData,
    required this.postHeadTitleData,
    required this.postPublicationsData,
});

  final String postTimeData;
  final String postHeadTitleData;
  final String postPublicationsData;

  @override
  State<PostWidget> createState() => _PostWidget();
}

class _PostWidget extends State<PostWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(7.0),
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

              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: TimeStampForeground(
                  first: false,
                  timeStempData: widget.postTimeData,
                ),
              ),

              ImageSlider(),


              PostTitleWidget(
                  postHeadTitleData: widget.postHeadTitleData,
              ),

              PublicationsWidget(
                  postPublicationsData: widget.postPublicationsData,
              ),
            ],
          ),
        ),

        // Strich unten
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 15,
              width: 2.5,
              //height: 356,
              //padding: const EdgeInsets.only(left: 21.2, top: 0, bottom: 0, right: 0),
              margin: EdgeInsets.only(left: 18.5, top: 0, bottom: 0, right: 0),
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
