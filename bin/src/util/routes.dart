import 'package:shelf_router/shelf_router.dart';

import '../controller/stats_controller.dart';

final router = Router()..get('/<name>', StatsController().getMessage);
