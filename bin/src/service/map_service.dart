import 'dart:async';
import 'dart:convert';

import '../model/fortnite_map.dart';
import '../util/http_util.dart';

class MapService {
  FutureOr<dynamic> retrieveMap() async {
    try {
      final response = await HttpUtil.getRequest(
        'https://fortnite-api.com/v1/map',
      );
      return FortniteMap.fromJson(json.decode(response.body)['data']);
    } catch (exception) {
      rethrow;
    }
  }
}
