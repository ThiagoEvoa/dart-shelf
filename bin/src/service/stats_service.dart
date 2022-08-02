import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/player.dart';

class StatsService {
  FutureOr<dynamic> retrievePlayerStats({required String playerName}) async {
    try {
      final response = await http.get(
        Uri.parse('https://fortnite-api.com/v2/stats/br/v2?name=$playerName'),
        headers: {'Authorization': '05a8a685-7b5e-4869-b19b-ca8fe1cc1c6f'},
      );
      return Player.fromJson(json.decode(response.body)['data']);
    } catch (ex) {
      rethrow;
    }
  }
}
