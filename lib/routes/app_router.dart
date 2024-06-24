import 'package:musci_player_backend/api/api.dart';
import 'package:musci_player_backend/routes/app_routes.dart';
import 'package:shelf_router/shelf_router.dart';

class AppRouter {
  static final API _api = API();
  static final Router _router = Router();

  static Router api() {
    return _router
      ..get(AppRoute.app, _api.rootHandler)
      ..get(AppRoute.home, _api.echoHandler);
  }
}
