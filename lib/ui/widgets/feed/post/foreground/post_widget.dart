import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/functions/controller/news_controller.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/post_title_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/publications_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/components/time_stamp.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import '../components/image_slider.dart';
import '../components/line.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    required this.postIDData,
    required this.postTimeData,
    required this.postHeadTitleData,
    required this.postPublicationsData,
    required this.postImageArrayData,
});
  final String postIDData;
  final DateTime postTimeData;
  final String postHeadTitleData;
  final int postPublicationsData;
  final List<String> postImageArrayData;


  @override
  State<PostWidget> createState() => _PostWidget();
}

class _PostWidget extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {

    final NewsController newsController = Get.put(NewsController());


    return Column(
      children: [
        Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Color(0xffffffff),
            boxShadow: const [
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(7.0),
            onTap: () {
              newsController.updateCurrentNews(widget.postIDData);
            },
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: TimeStamp(
                    first: false,
                    timeStempData: widget.postTimeData,
                  ),
                ),

                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 19.6),
                      child: Column(
                        children: [
                          Line(
                            height: 170,
                            //fadeout: true,
                          ),
                          Line(
                            height: 33,
                            fadeout: true,
                          ),
                        ],
                      ),
                    ),

                    ImageSlider(postImageArrayData: widget.postImageArrayData,),

                  ],
                ),


                PostTitleWidget(
                    postHeadTitleData: widget.postHeadTitleData,
                ),

                PublicationsWidget(
                    postPublicationsData: widget.postPublicationsData,
                ),
              ],
            ),
          ),
        ),


      ],


    );
  }
}