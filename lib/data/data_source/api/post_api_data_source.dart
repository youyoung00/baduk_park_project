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
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List jsonList = jsonResponse['list'];
      return Result.success(jsonList);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
