import 'dart:async';
import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../service/shop_service.dart';
import '../util/http_util.dart';

class ShopController {
  late ShopService service;

  ShopController() {
    service = ShopService();
  }

  FutureOr<Response> getShop(Request request) async {
    try {
      final response = await service.retrieveShop();
      return Response.ok(
        json.encode(response).toString(),
        headers: HttpUtil.responseHeaders,
      );
    } catch (exception) {
      return Response.badRequest();
    }
  }
}
