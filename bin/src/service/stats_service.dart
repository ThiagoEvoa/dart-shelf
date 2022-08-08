import 'dart:async';
import 'dart:convert';

import '../model/player.dart';
import '../util/http_util.dart';

class StatsService {
  FutureOr<dynamic> retrievePlayerStats({required String playerName}) async {
    try {
      final response = await HttpUtil.getRequest(
        'https://fortnite-api.com/v2/stats/br/v2?name=$playerName',
      );
      return Player.fromJson(json.decode(response.body)['data']);
    } catch (exception) {
      rethrow;
    }
  }
}
