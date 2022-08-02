import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/news_model.dart';

class NewsProvider extends GetConnect {
  final storage = GetStorage();

  @override
  void onInit() {

    final token = storage.read('token');
    if (token != null) {
      httpClient.addRequestModifier<dynamic>((request) {
        //String token = storage.read('token');
        request.headers['Authorization'] = 'Bearer $token';
        return request;
      });
    }

  /*
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return News.fromJson(map);
      if (map is List) return map.map((item) => News.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
       */
  }



  Future<Map<String, dynamic>> getNews(String id) async {
    final response = await get('http://130.61.250.130:3000/articles/article-data/$id');
    return response.body;
  }

  Future<Response<News>> postNews(News news) async => await post('news', news);
  Future<Response> deleteNews(int id) async => await delete('news/$id');
}
