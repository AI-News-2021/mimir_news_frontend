import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

class Feed_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: new Scaffold(
          backgroundColor: Color(0xfffcfcff),
          //backgroundColor: Colors.orange,

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.logout),
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
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        left: 5,
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropShadowImage(
                            image: Image.asset(
                              'assets/mimir_logo_round.png',
                              scale: 27,
                            ),
                            //color: Color(0x33000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                          Image.asset(
                            'assets/mimir_text_grey.png',
                            scale: 4.5,
                          ),
                          const DecoratedIcon(
                            Icons.settings_outlined,
                            size: 45,
                            color: Color(0xff4E5155),
                            shadows: [
                              BoxShadow(
                                color: Color(0x33000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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