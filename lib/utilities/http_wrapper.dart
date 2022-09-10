import 'package:http/http.dart' as http;

class HttpWrapper {
  Future get(String url, {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri, headers: headers);
    return response.body;
  }

  Future post() async {}
  Future put() async {}
  Future delete() async {}
  Future patch() async {}
}
