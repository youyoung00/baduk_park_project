import 'dart:convert';

import 'package:baduk_park/data/data_source/api/result.dart';
import 'package:http/http.dart' as http;

import '../../../core/security area/api_url/url.dart';

class PostApi {
  final http.Client client;

  PostApi(this.client);

  Future<Result<Iterable>> fetch() async {
    try {
      final response = await client.get(
        Uri.parse(Url.ciServer),
      );
      print("1111111111111111111111111111");
      print('response1 ${response.body}');
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      print('jsonResponse2 $jsonResponse');
      List jsonList = jsonResponse['list'];
      print('3333333333333333333333333333');
      print(jsonList);
      return Result.success(jsonList);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
