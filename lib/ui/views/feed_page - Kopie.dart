import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';

import '../widgets/feed/navbar/navbar_top_widget.dart';
import '../widgets/feed/post/background/time_stamp_background.dart';
import '../widgets/feed/post/components/line.dart';
import '../widgets/feed/post/foreground/post_widget.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: new Scaffold(
          //backgroundColor: Color(0xfffcfcff),
          backgroundColor: Color(0xffebebf1),
          //backgroundColor: Colors.orange,

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_upward),
            onPressed: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => buildSheet(),
              barrierColor: Colors.transparent,
            ),
            //{
            //Navigator.pushNamed(context, 'login_rout',
            //    arguments: 'pass in argument');

            //},
          ),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  NavbarTopWidget(),
                ],
              ),
          ),
        ),
      ),
    );
  }

  //Widget makeDismissible({required Widget child}) => GestureDetector(
  //  behavior: HitTestBehavior.opaque,
  //  onTap: () => Navigator.of(context).pop(),
  //  child: GestureDetector(onTap: () {}, child: child),
  //);

  //Widget buildSheet() => makeDismissible(
  Widget buildSheet() => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: DraggableScrollableSheet(
          initialChildSize: 0.9,
          minChildSize: 0.89,
          //maxChildSize: 0.9,
          builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(3, -3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: SingleChildScrollView(
              controller: controller,
              padding: const EdgeInsets.only(left: 20.0, bottom: 20, right: 20),
              child: Column(
                children: [
                  //FloatingActionButton(
                  //
                  //  child: const Icon(Icons.logout),
                  //  onPressed: () => Navigator.of(context).pop(),
                  //),

                  //SvgPicture.asset("assets/svg/tab_hold_pill2.svg"),
                  DecoratedIcon(
                    Icons.remove,
                    size: 40,
                  ),

                  Container(
                    child: Image.asset(
                      'assets/sample-feed.png',
                      scale: 1,
                    ),
                  ),

                  Text(
                    'Facebook’s Mark Zuckerberg announces the Metaverse.',
                    style: TextStyle(
                        color: Color(0xff4e5155),
                        fontSize: 24,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  Text(
                    'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Color(0xff4e5155),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
