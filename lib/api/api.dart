import 'package:musci_player_backend/db/app_db.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class API {
  final _header = {'content-type': 'application/json'};
  Response rootHandler(Request req) {
    return Response.ok('Hello, World!\n');
  }

  Response echoHandler(Request request) {
    final message = request.params['message'];
    return Response.ok('$message\n');
  }

  Response getSongs(Request request) {
    AppDB db = AppDB();
    db.openDB();
    return Response.ok('body', headers: _header);
  }
}
