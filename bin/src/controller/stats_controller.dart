import 'dart:async';
import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../service/stats_service.dart';
import '../util/http_util.dart';

class StatsController {
  late StatsService service;

  StatsController() {
    service = StatsService();
  }

  FutureOr<Response> getPlayerStats(Request request, String name) async {
    try {
      final response = await service.retrievePlayerStats(playerName: name);
      return Response.ok(
        json.encode(response),
        headers: HttpUtil.responseHeaders,
      );
    } catch (exception) {
      return Response.badRequest();
    }
  }
}
