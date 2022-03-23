import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../global/list_view_underline_widget.dart';
import '../../global/poppins_text_widget.dart';
import '../../login/big_textbox_head_widget.dart';
import '../post/components/dot.dart';
import '../post/components/image_slider.dart';
import '../post/components/line.dart';
import '../post/components/news_provider_slider.dart';
import '../post/foreground/post_title_widget.dart';
import '../post/foreground/publications_widget.dart';
import '../post/foreground/time_stamp_foreground.dart';
import 'drag_handle_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import '../../../../functions/controller/login_controller.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  final LoginController controller2 = Get.put(LoginController());

  PanelWidget({
    required this.controller,
    required this.panelController,
  });



  @override
  Widget build(BuildContext context) => Stack(
    children: [



      NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },

        child: SingleChildScrollView(
          controller: controller,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      TimeStampForeground(
                        first: true,
                        timeStempData: '6 hours ago',
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
                                child: AutoSizeText(
                                  //'Facebook’s Mark Zuckerberg announces the Metaverse. fgureshbouigrdiughuoiradughiruadhigrduhiguhirguioharegouiprsedgiojrtdiojhgiopjrtdigojrdiojgiojrdsgijordiojgriadojgiojriojgrijaodgijordaijogjrideogaoirejmdghboirdphjgjmesrigfURPOAGJMREAUGIJRDIOLAGKNRDAGIOURJGNRIUDGNIURDGHNIUDRNGIRNGRDNGUIRDHNGAIHN',
                                  'Facebook’s Mark Zuckerberg announces the Metaverse.',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff4e5155),
                                      fontFamily: 'Lora',
                                      fontWeight: FontWeight.w700),
                                  minFontSize: 10,
                                  stepGranularity: 10,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ImageSlider(),

                PublicationsWidget(
                  postPublicationsData: '130',
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8.8, right: 8.8),
                  child:                   Text(
                    //'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact. In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact. In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact. In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact. In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
                    'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Color(0xff4e5155),
                        fontWeight: FontWeight.w600),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      TimeStampForeground(
                        first: true,
                        timeStempData: '',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.8),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Line(
                                  height: 220,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 21.3,
                                child: NewsProviderSlider(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        child: BigTextboxHeadWidget(
                            bigButtonTextHead: 'Dev Tools'),
                        width: 100,
                      ),
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: BigTextboxHeadWidget(
                                    bigButtonTextHead: 'First Name'),
                                width: 100,
                              ),
                              Container(
                                child: Obx(() => PoppinsTextWidget(text: controller2.authData().firstName.toString())),
                              ),
                            ],
                          ),
                          height: 40,
                        ),
                        ListViewUnderlineWidget(),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: BigTextboxHeadWidget(
                                    bigButtonTextHead: 'Last Name'),
                                width: 100,
                              ),
                              Container(
                                child: Obx(() => PoppinsTextWidget(text: controller2.authData().lastName.toString())),
                              ),
                            ],
                          ),
                          height: 40,
                        ),
                        ListViewUnderlineWidget(),

                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: BigTextboxHeadWidget(
                                    bigButtonTextHead: 'E-Mail'),
                                width: 100,
                              ),
                              Container(
                                child: Obx(() => PoppinsTextWidget(text: controller2.authData().email.toString())),
                              ),
                            ],
                          ),
                          height: 40,
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfff2f1f6),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10.0),
                        bottom: Radius.circular(10.0),
                      ),
                    ),
                  ),
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
  );

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
