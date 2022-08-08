import 'package:shelf_router/shelf_router.dart';

import '../controller/map_controller.dart';
import '../controller/shop_controller.dart';
import '../controller/stats_controller.dart';

class ApiRouter {
  static late Router _router;
  static late StatsController _statsController;
  static late ShopController _shopController;
  static late MapController _mapController;

  ApiRouter._();

  static Router get routes {
    _router = Router();
    _statsController = StatsController();
    _shopController = ShopController();
    _mapController = MapController();

    return _router
      ..get('/stats/<name>', _statsController.getPlayerStats)
      ..get('/shop', _shopController.getShop)
      ..get('/map', _mapController.getMap);
  }
}
