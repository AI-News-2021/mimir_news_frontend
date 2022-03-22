import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/feed/detailed_post/panel_widget.dart';
import '../widgets/feed/navbar/navbar_top_widget.dart';
import '../widgets/feed/post/background/time_stamp_background.dart';
import '../widgets/feed/post/foreground/post_title_widget.dart';
import '../widgets/feed/post/foreground/post_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.95;



    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: new Scaffold(

          backgroundColor: Color(0xffebebf1),


          body: SlidingUpPanel(
            body: Container(
              alignment: FractionalOffset.topCenter,
              child: Stack(
                children: <Widget>[

                  NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (OverscrollIndicatorNotification overscroll) {
                      overscroll.disallowGlow();
                      return true;
                    },
                    child: SingleChildScrollView(

                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 85,
                            ),


                            TimeStampBackground(
                              first: true,
                              timeStempData: 'Today',
                            ),


                            PostWidget(
                                postTimeData: '6 hours ago',
                                postHeadTitleData: 'Facebook’s Mark Zuckerberg announces the Metaverse. fgureshbouigrdiughuoiradughiruadhigrduhiguhirguioharegouiprsedgiojrtdiojhgiopjrtdigojrdiojgiojrdsgijordiojgriadojgiojriojgrijaodgijordaijogjrideogaoirejmdghboirdphjgjmesrigfURPOAGJMREAUGIJRDIOLAGKNRDAGIOURJGNRIUDGNIURDGHNIUDRNGIRNGRDNGUIRDHNGAIHN',
                                postPublicationsData: '120'
                            ),



                            PostWidget(
                                postTimeData: '6 hours ago',
                                postHeadTitleData: 'Facebook’s Mark Zuckerberg announces the Metaverse.',
                                postPublicationsData: '120'
                            ),



                            PostWidget(
                                postTimeData: '6 hours ago',
                                postHeadTitleData: 'Facebook’s Mark Zuckerberg announces the Metaverse.',
                                postPublicationsData: '120'
                            ),


                            PostWidget(
                                postTimeData: '6 hours ago',
                                postHeadTitleData: 'Facebook’s Mark Zuckerberg announces the Metaverse.',
                                postPublicationsData: '120'
                            ),

                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  NavbarTopWidget(),
                ],
              ),
            ),
            controller: panelController,
            maxHeight: panelHeightOpen,
            //minHeight: 100,
            parallaxEnabled: true,
            parallaxOffset: 0.05,
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),

            panelBuilder: (controller) => PanelWidget(
              controller: controller, panelController: panelController,
            ),


            collapsed: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5, right: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),

                            child: Image.network(
                              'https://www.tagesschau.de/multimedia/bilder/meta-119~_v-original.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 150,
                        child: AutoSizeText(
                          'Facebook’s Mark Zuckerberg announces the Metaverse.',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff4e5155),
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w700
                          ),
                          minFontSize: 10,
                          stepGranularity: 10,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        )

                      ),
                    ],
                  ),
                )
            ),


          ),
        ),
      ),
    );
  }
}

