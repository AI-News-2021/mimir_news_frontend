import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://www.tagesschau.de/multimedia/bilder/meta-119~_v-original.jpg',
                fit: BoxFit.cover,
              ),
            ),
      ),
    );
  }
}
