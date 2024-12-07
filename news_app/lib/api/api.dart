import 'package:dio/dio.dart';

class Endpoints {
  static String baseUrl = "https://newsapi.org/v2/";
  static String topheadlines = "${baseUrl}top-headlines";
  static String everything = "${baseUrl}everything";
  static String apiKay = "4c50e9b5b32e4b6f86e6bee32bf02200";
}

class ApiConseuomer {
  static Dio dio = Dio();
  Future<dynamic> getData(
      {required String url,
      String? country,
      String? category,
      bool isSearch = false,
      String? q}) async {
    Response response = await dio.get(url,
        queryParameters: isSearch
            ? {
                "apiKey": Endpoints.apiKay,
                "q": q,
              }
            : {
               "apiKey": Endpoints.apiKay,
                "country": country ?? "",
                "category": category ?? "",
              });

    return response.data;
  }
}
