import 'package:flutter/material.dart';
import '../../pages/page_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
