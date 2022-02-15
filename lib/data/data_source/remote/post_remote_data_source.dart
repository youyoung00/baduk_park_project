import 'dart:convert';

import 'package:baduk_park/domain/domain_model/post_model.dart';
import 'package:baduk_park/domain/domain_repository/contents_api.dart';
import 'package:http/http.dart' as http;

class PostApi extends ContentsApi {
  @override
  Future<List<PostModel>> fetchPosts() async {
    String homeIp = '192.168.219.165';
    String schoolIp = '192.168.0.80';
    String mainIp = '10.0.2.2';

    var url = 'http://$mainIp:3000/badukpark';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);

      jsonList.map((e) => PostModel.fromJson(e)).toList;

      return jsonList.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load Movie');
    }
  }
}
