import 'package:mongo_dart/mongo_dart.dart';

abstract interface class AppDBInterface {
  void openDB();
}

/// [AppDB] contains all the database functions for CRUD operations as well...
/// as for data query and filter.
class AppDB implements AppDBInterface {
  // static Db? db;

  /// This function opens the mongo DB connection and connects to DB server.
  @override
  void openDB() async {
    Db db = await Db.create(
        'mongodb+srv://pk89844:9810253997Pa@cluster0.3wfbogr.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0');
    // Db db =
    //     Db('mongodb+srv://pk89844:9810253997Pa@cluster0.3wfbogr.mongodb.net');

    await db.open();
  }
}
