import 'package:flutter/material.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:decorated_icon/decorated_icon.dart';

import 'navbar/settings_dropdown_widget.dart';

class NavbarTopWidget extends StatelessWidget {
  const NavbarTopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          SettingsDropdownWidget(

          ),
        ],
      ),
    );
  }
}
