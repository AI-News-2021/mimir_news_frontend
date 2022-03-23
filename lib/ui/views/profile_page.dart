import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimir_news_frontend/ui/widgets/global/list_view_underline_widget.dart';
import 'package:mimir_news_frontend/ui/widgets/global/poppins_text_widget.dart';
import '../../functions/controller/login_controller.dart';
import '../../functions/routes/route.dart';
import '../widgets/login/big_button_widget.dart';
import '../widgets/login/big_textbox_head_widget.dart';
import '../widgets/login/big_textbox_widget.dart';
import '../widgets/login/login_logo_widget.dart';
import '../widgets/login/big_textbutton_right_widget.dart';

import 'package:get_storage/get_storage.dart';

class ProfilePage extends GetView<LoginController> {
  ProfilePage({Key? key}) : super(key: key);

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xfff2f1f6),
        body: Container(
          alignment: FractionalOffset.bottomCenter,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: BigTextboxHeadWidget(
                            bigButtonTextHead: 'Account Deteils'),
                        height: 30,
                      ),
                      Container(
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
                                    child: Obx(() => PoppinsTextWidget(text: controller.authData().firstName.toString())),
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
                                    child: Obx(() => PoppinsTextWidget(text: controller.authData().lastName.toString())),
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
                                    child: Obx(() => PoppinsTextWidget(text: controller.authData().email.toString())),
                                  ),
                                ],
                              ),
                              height: 40,
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                      ),
                      BigButtonWidget(
                        title: 'Go Back',
                        hasBorder: false,
                        toRoute: Routes.ROUTE_POP,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
