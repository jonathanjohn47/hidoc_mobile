import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/articles_model.dart';

class ScreenOneGetController extends GetxController {
  Future<ArticlesModel> getArticles() async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid'));
    request.fields.addAll({'sId': '500', 'uuId': '', 'userId': '423914'});
    print("Before send");
    http.StreamedResponse response = await request.send();
    print("After send");

    if (response.statusCode == 200) {
      var result = await response.stream.bytesToString();
      ArticlesModel articlesModel = ArticlesModel.fromJson(jsonDecode(result));
      return articlesModel;
    } else {
      throw response.reasonPhrase.toString();
    }
  }
}
