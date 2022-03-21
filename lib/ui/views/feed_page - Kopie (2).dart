import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/feed/detailed_post/panel_widget.dart';
import '../widgets/feed/navbar/navbar_top_widget.dart';
import '../widgets/feed/post/background/time_stamp_background.dart';
import '../widgets/feed/post/foreground/post_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class FeedPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.95;
    final pannelController = PannelController();


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
            controller: pannelController,
            maxHeight: panelHeightOpen,
            minHeight: 100,
            parallaxEnabled: true,
            parallaxOffset: 0.05,
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),

            panelBuilder: (controller) => PanelWidget(
              controller:pannelController,
            ),



            collapsed: Container(
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  "This is the collapsed Widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),


          ),
        ),
      ),
    );
  }
}
