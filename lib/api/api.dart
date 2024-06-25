import 'package:musci_player_backend/db/app_db.dart';
import 'package:musci_player_backend/module/songs/app_songs.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class API extends AppSongs {
  final _header = {'content-type': 'application/json'};
  Response rootHandler(Request req) {
    return Response.ok('Hello, World!\n');
  }

  Response echoHandler(Request request) {
    final message = request.params['message'];
    return Response.ok('$message\n');
  }

  Response getSongs(Request request) {
    super.querySongsDB();
    return Response.ok('body', headers: _header);
  }
}
