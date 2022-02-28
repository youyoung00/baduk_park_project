import 'dart:convert';

import 'package:baduk_park/data/data_source/remote/result.dart';
import 'package:http/http.dart' as http;

class PostApi {
  final http.Client client;

  PostApi(this.client);

  static const url = 'http://127.0.0.1:9004/api/list.php';

  // static const url = 'http://10.0.2.2:3000/badukpark/';
  static const url2 = 'http://172.16.101.233:3000/badukpark/';

  Future<Result<Iterable>> fetch() async {
    try {
      final response = await client.get(
        Uri.parse(url2),
      );
      print('response1 $response');
      Iterable jsonResponse = jsonDecode(response.body);
      print('jsonResponse2 $jsonResponse');
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
