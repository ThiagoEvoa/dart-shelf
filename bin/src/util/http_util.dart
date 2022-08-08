import 'dart:io';

import 'package:http/http.dart' as http;

class HttpUtil {
  HttpUtil._();

  static final Map<String, String> responseHeaders = {
    HttpHeaders.contentTypeHeader: 'application/json'
  };

  static final Map<String, String> _headers = {
    'Authorization': Platform.environment['Authorization'] ??
        '05a8a685-7b5e-4869-b19b-ca8fe1cc1c6f'
  };

  static Future<http.Response> getRequest(String url) async {
    return await http.get(
      Uri.parse(url),
      headers: _headers,
    );
  }
}
