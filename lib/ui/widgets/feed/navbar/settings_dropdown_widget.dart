import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:get/get.dart';
import '../../../../functions/routes/route.dart';

class SettingsDropdownWidget extends StatefulWidget {
  const SettingsDropdownWidget({Key? key}) : super(key: key);

  @override
  State<SettingsDropdownWidget> createState() => _SettingsDropdownWidget();
}

class _SettingsDropdownWidget extends State<SettingsDropdownWidget> {


  @override
  Widget build(BuildContext context) {
        return Container(
          child: FocusedMenuHolder(

            menuItems: [
              FocusedMenuItem(
                title: Text('More Soon'),
                 trailingIcon: Icon(Icons.more),
                 onPressed: () => {print('test')},
              ),
              FocusedMenuItem(
                title: Text('Log Out', style: TextStyle(color: Color(0xffffffff))),
                trailingIcon: Icon(Icons.logout, color: Color(0xffffffff)),
                backgroundColor: Color(0xffff0000),
                onPressed: () => {print('Sign Out'), Get.toNamed(Routes.ROUTE_LOGIN)},
              ),
            ],

            //blurBackgroundColor: Color.blueGrey[900],
            //menuItemExtent: 20,
            //menuWidth: MediaQuery.of(context).size.width,
            menuWidth: 250,
            menuOffset: 15,
            openWithTap: true,
            duration: Duration(milliseconds: 100),
            animateMenuItems: false,
            onPressed: () {

            },
            child: DecoratedIcon(
              Icons.settings_outlined,
              size: 42,
              color: Color(0xff4E5155),
              shadows: [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        );
  }
}
