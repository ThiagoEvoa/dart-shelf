import 'dart:async';
import 'dart:convert';

import '../model/shop.dart';
import '../util/http_util.dart';

class ShopService {
  FutureOr<Shop> retrieveShop() async {
    try {
      final response = await HttpUtil.getRequest(
        'https://fortnite-api.com/v2/shop/br',
      );
      return Shop.fromJson(json.decode(response.body));
    } catch (exception) {
      rethrow;
    }
  }
}
