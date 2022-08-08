import 'dart:async';
import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../service/map_service.dart';
import '../util/http_util.dart';

class MapController {
  late MapService service;

  MapController() {
    service = MapService();
  }

  FutureOr<Response> getMap(Request request) async {
    try {
      final response = await service.retrieveMap();
      return Response.ok(
        json.encode(response).toString(),
        headers: HttpUtil.responseHeaders,
      );
    } catch (exception) {
      return Response.badRequest();
    }
  }
}
