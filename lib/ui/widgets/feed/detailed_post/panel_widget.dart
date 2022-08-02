import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../../functions/controller/news_controller.dart';
import '../../global/list_view_underline_widget.dart';
import '../../global/poppins_text_widget.dart';
import '../../login/big_textbox_head_widget.dart';
import '../post/components/devtools.dart';
import '../post/components/dot.dart';
import '../post/components/generic_table.dart';
import '../post/components/image_slider.dart';
import '../post/components/line.dart';
import '../post/components/news_provider_slider.dart';
import '../post/foreground/post_title_widget.dart';
import '../post/foreground/publications_widget.dart';
import '../post/components/time_stamp.dart';
import 'drag_handle_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import '../../../../functions/controller/login_controller.dart';

class PanelWidget extends GetView<NewsController> {
  final ScrollController scrollController;
  final PanelController panelController;
  final controller = Get.put(NewsController());

  PanelWidget({
    required this.scrollController,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context) => Obx(() => Stack(
        children: [
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          TimeStamp(
                            first: true,
                            timeStempData:
                                controller.live().date,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.8),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Line(
                                      height: 80,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.8),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width - 45,
                                    child: Obx(() => AutoSizeText(
                                      controller.live().title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff4e5155),
                                          fontFamily: 'Lora',
                                          fontWeight: FontWeight.w700),
                                      minFontSize: 10,
                                      stepGranularity: 10,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 19),
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
                        ImageSlider(postImageArrayData: controller.live().images),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: PublicationsWidget(
                        postPublicationsData: controller.live().publicationAmount,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.8, right: 8.8),
                      child: Text(
                        controller.live().content,
                        style: TextStyle(
                            fontSize: 15,
                            //height: 1.3,
                            //decorationStyle: TextDecorationStyle.wavy,
                            fontFamily: 'Poppins',
                            color: Color(0xff4e5155),
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                      ),

                    ),

                    Devtools(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            TimeStamp(
                              first: true,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.8),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Line(
                                        height: 160,
                                      ),
                                      Line(
                                        height: 45,
                                        fadeout: true,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          21.3,
                                      child: NewsProviderSlider(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Devtools(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GenericTable(
                          title: 'Dev Tools',
                          //tableItems: [GenericTableItem(key: 'key', value: 'value')],
                          tableItems: controller.devtools().entries.map((e) => GenericTableItem(key: e.key, value: e.value)).toList(),
                          //backgroundColor: 0xfff2f1f6,
                        ),
                      ),
                    ),



                    SizedBox(
                      height: 25,
                    ),

                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 15,
                width: 38,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  //border: Border.all(color: Color(0xff999da3), width: 10.0),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: buildDragHandle(
                    //panelController: panelController,
                    ),
              ),
            ),
          ),
        ],
      ),);

  Widget buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Color(0xff999da3),
              //border: Border.all(color: Color(0xff999da3), width: 10.0),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
}
