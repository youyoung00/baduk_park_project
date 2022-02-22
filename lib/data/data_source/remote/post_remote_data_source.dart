import 'dart:convert';

import 'package:http/http.dart' as http;

class PostApi {
  final http.Client client;
  PostApi(this.client);

  Future<Iterable> fetch() async {
    String homeIp = '192.168.219.165';
    String schoolIp = '192.168.0.80';
    String mainIp = '10.0.2.2';

    var url = 'http://$mainIp:3000/badukpark';
    var response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Iterable jsonList = jsonDecode(response.body);

      return jsonList;
    } else {
      throw Exception('Failed to load Movie');
    }
  }
}
