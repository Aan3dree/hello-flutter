import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHelper {
  var url;
  HttpHelper(this.url);
  Future getData() async {
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      return res.statusCode;
    }
  }
}
