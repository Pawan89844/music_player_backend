import 'package:musci_player_backend/api/api.dart';
import 'package:musci_player_backend/routes/app_routes.dart';
import 'package:shelf_router/shelf_router.dart';

// ************************************************************************************************************************
/// [AppRouter] holds APIs available throughout the server.
/// The [AppRouter] connects the server to the Router and calls the associated API.
/// Currently, [AppRouter] holds one static function [api] which is the source of connecting API functions to the Router.
// ************************************************************************************************************************
class AppRouter {
  static final API _api = API();
  static final Router _router = Router();

  static Router api() {
    return _router
      ..get(AppRoute.app, _api.rootHandler)
      ..get(AppRoute.home, _api.echoHandler)
      ..get(AppRoute.getSongs, _api.getSongs);
  }
}
