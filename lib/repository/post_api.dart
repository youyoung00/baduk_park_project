import 'dart:convert';

import 'package:baduk_park/model/post_model.dart';
import 'package:baduk_park/repository/contents_api.dart';
import 'package:http/http.dart' as http;

class PostApi extends ContentsApi {
  @override
  Future<List<PostModel>> fetchPosts() async {
    // var url = 'http://192.168.0.30:3000';
    var url = 'http://192.168.219.105:3000';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      // print(jsonList);

      jsonList.map((e) => PostModel.fromJson(e)).toList;

      return jsonList.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load Movie');
    }
  }
}
