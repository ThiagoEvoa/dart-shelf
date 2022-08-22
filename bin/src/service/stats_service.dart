import 'dart:async';
import 'dart:convert';

import '../model/stats.dart';
import '../util/http_util.dart';

class StatsService {
  FutureOr<Stats> retrievePlayerStats({required String playerName}) async {
    try {
      final response = await HttpUtil.getRequest(
        'https://fortnite-api.com/v2/stats/br/v2?name=$playerName',
      );
      return Stats.fromJson(json.decode(response.body));
    } catch (exception) {
      rethrow;
    }
  }
}
