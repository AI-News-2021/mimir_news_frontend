import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'drag_handle_widget.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  PanelWidget({
    required this.controller,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context) => ListView(
    padding: EdgeInsets.zero,
    controller: controller,
    children: <Widget>[

      buildDragHandle(
        //panelController: panelController,
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
      Text(
        'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
        style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color(0xff4e5155),
            fontWeight: FontWeight.w600),
      ),
      Text(
        'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
        style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color(0xff4e5155),
            fontWeight: FontWeight.w600),
      ),
      Text(
        'In a keynote video, Facebook’s CEO Mark Zuckerberg announces that Facebook will be rebranded to ‘Meta’ and will launch the Metaverse, a virtual world that will be the next version of social networking. This platform will have the potential to forever change e-commerce and socialization, completely redefining the way we interact.',
        style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color(0xff4e5155),
            fontWeight: FontWeight.w600),
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
  );

  Widget buildDragHandle() => GestureDetector(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
    ),
    onTap: togglePanel,
  );
  void togglePanel() => panelController.isPanelOpen ? panelController.close() : panelController.open() ;
}
