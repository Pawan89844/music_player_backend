import 'package:mongo_dart/mongo_dart.dart';

sealed class AppDBInterface {
  void openDB();
}

/// [AppDB] contains all the database functions for CRUD operations as well...
/// as for data query and filter.
class AppDB implements AppDBInterface {
  Db db = Db('');

  /// This function opens the mongo DB connection and connects to DB server.
  @override
  void openDB() async {
    await db.open();
  }
}
