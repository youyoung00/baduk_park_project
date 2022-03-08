import 'dart:convert';

import 'package:baduk_park/data/data_source/api/result.dart';
import 'package:http/http.dart' as http;

class PostApi {
  final http.Client client;

  PostApi(this.client);

  static const url1 = 'http://192.168.0.80:9004/api/list.php';
  static const url2 = 'http://172.16.101.233:3000/badukpark/';
  static const ciServer = 'http://10.0.2.2:9111/index.php/board/list/1';
  static const url3 = 'http://10.0.2.2:3000/badukpark/';
  static const url4 = 'http://192.168.0.80:9004/api/test.php';

  Future<Result<Iterable>> fetch() async {
    try {
      final response = await client.get(
        Uri.parse(ciServer),
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
