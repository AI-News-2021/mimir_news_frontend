import 'mimir_news_frontend/functions/provider/provider.dart';
import 'package:get/get.dart';

class DataController extends GetxController with StateMixin<dynamic>{

  var error = ''.obs;
  var success = ''.obs;

  @override
  void onInit() {
    super.onInit();
    Provider().getUser().then((value) {
      print(value);
      success(value);
    },onError: (err){
      print(err);
      error(err);
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}