import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/post_title_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/publications_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/feed/post/foreground/time_stamp_foreground.dart';
import '../../pages/page_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  final _controller = PageController();

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

              TimeStampForeground(
                first: false,
                timeStempData: widget.postTimeData,
              ),

              Container(
                height: 180,
                child: PageView(
                  controller: _controller,
                  children: [
                    Page1(),
                    Page1(),
                    Page1(),
                    Page1(),
                    Page1(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xff944cde),
                    dotColor: Color(0xffc8d0d8),
                    dotHeight: 7,
                    dotWidth: 7,
                    spacing: 5,
                  ),
                ),
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
