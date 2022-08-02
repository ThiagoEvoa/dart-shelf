import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../service/stats_service.dart';

class StatsController {
  late StatsService service;

  StatsController() {
    service = StatsService();
  }

  FutureOr<Response> getMessage(Request request, String name) async {
    try {
      final response = await service.retrievePlayerStats(playerName: name);
      return Response.ok(
        json.encode(response).toString(),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
    } catch (ex) {
      return Response.badRequest();
    }
  }
}
