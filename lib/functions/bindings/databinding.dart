import 'package:getx_test/getx/controller/datacontroller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }

}