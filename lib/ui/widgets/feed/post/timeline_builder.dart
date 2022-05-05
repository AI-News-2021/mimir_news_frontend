import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foreground/post_widget.dart';

class TimelineBuilder extends StatefulWidget {
  const TimelineBuilder({Key? key}) : super(key: key);

  //TimelineBuilder({required this.items, required this.controller});

  //final List<String> items;
  //final controller;

  @override
  State<TimelineBuilder> createState() => _TimelineBuilderState();
}

class _TimelineBuilderState extends State<TimelineBuilder> {
  List<String> items = List.generate(
    3,
    (index) => 'ITEM ${index + 1}',
  );
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  Future fetch() async {
    setState(() {
      items.addAll(['Item A', 'Item B', 'Item C', 'Item D']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          SizedBox(
            height: 110,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length + 1,
              itemBuilder: (context, index) {
                if (index < items.length) {
                  return Column(
                    children: [
                      PostWidget(
                          postTimeData: '6 hours ago',
                          postHeadTitleData:
                              'Facebook’s Mark Zuckerberg announces the Metaverse.',
                          postPublicationsData: '120'),

                      //ListTile(
                      //  title: Text(items[index]),
                      //),
                    ],
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
