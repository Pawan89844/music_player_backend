import 'package:musci_player_backend/db/app_db.dart';

abstract interface class Songs {
  void querySongsDB();
}

class AppSongs extends AppDB implements Songs {
  @override
  void querySongsDB() async {}
}
