import 'package:get/get.dart';
import 'package:mimir_news_frontend/functions/models/news_model.dart';
import '../models/news_model.dart';
import '../provider/news_provider.dart';
import 'package:get_storage/get_storage.dart';

class NewsController extends GetxController {
  //final RxList<News> newsItems = List<News>.empty().obs;
  final newsProvider = Get.put(NewsProvider());
  //final currentNewsId = ''.obs;
  final live = Live(title: '', content: '', date: DateTime.now(), id: '', images: [''], publicationAmount: 0).obs;
  final devtools = {}.obs;
  final storage = GetStorage();

  //TODO: Implement NewsControllerController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    if (storage.read('correntNewsID') != null) {
      fetch(storage.read('correntNewsID'));
    }
    //ever(currentNewsId, (_) => updateCurrentNews(currentNewsId.value));
  }

  void updateCurrentNews(String id) {
    storage.write('correntNewsID', id);
    fetch(id);
    print("News ID " + id + "taped.");
  }


  @override
  void onReady() {
    super.onReady();
  }

  void fetch(id) async {

    final response = await newsProvider.getNews(id);

    final news = News.fromJson(response);
    live(news.live);
    devtools(news.devtools);
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
