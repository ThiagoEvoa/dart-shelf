import 'dart:async';
import 'dart:convert';

import '../model/shop_items.dart';
import '../util/http_util.dart';

class ShopService {
  FutureOr<dynamic> retrieveShop() async {
    try {
      final response = await HttpUtil.getRequest(
        'https://fortnite-api.com/v2/shop/br',
      );
      return ShopItems.fromJson(json.decode(response.body)['data']);
    } catch (exception) {
      rethrow;
    }
  }
}
