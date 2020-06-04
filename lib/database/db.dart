import 'dart:io';

import 'package:covid_19/constants/strings.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  static final DatabaseProvider dbProvider = DatabaseProvider();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }

  // Future onConfigure(Database db) async {
  //   await db.execute('PRAGMA foreign_keys = ON');
  // }

  createDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //"ReactiveTodo.db is our database instance name
    String path = join(documentsDirectory.path, "covid19.db");

    var database = await openDatabase(
      path,
      version: 1,
      onCreate: initDB,
      // onUpgrade: onUpgrade,
      // onConfigure: onConfigure
    );
    return database;
  }

  //This is optional, and only used for changing DB schema migrations
  // void onUpgrade(Database database, int oldVersion, int newVersion) {
  //   if (newVersion > oldVersion) {}
  // }

  void initDB(Database database, int version) async {
    //CREATE
    await database.execute('''
        create table $tableKondisi ( 
          $columnId integer primary key autoincrement, 
          $columnKondisi text not null,
          $columnLuaran text not null)
        ''');

    await database.execute('''
        create table $tableKesimpulan ( 
          $columnId integer primary key autoincrement, 
          $columnKesimpulan text not null)
        ''');

    // await database.execute('''
    //     create table $tableAturan (
    //       $columnId integer primary key autoincrement,
    //       $columnAturan text not null)
    //     ''');

    // INSERT
    // Tabel Kondisi
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi1", "$luaran1"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi2", "$luaran2"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi3", "$luaran3"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi4", "$luaran4"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi5", "$luaran5"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi6", "$luaran6"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi7", "$luaran7"]);
    await database.rawInsert(
        'INSERT INTO $tableKondisi ($columnKondisi, $columnLuaran) VALUES(?, ?)',
        ["$kondisi8", "$luaran8"]);

    // Tabel Kesimpulan
    await database.rawInsert(
        'INSERT INTO $tableKesimpulan ($columnKesimpulan) VALUES(?)',
        ["$kesimpulan1"]);
    await database.rawInsert(
        'INSERT INTO $tableKesimpulan ($columnKesimpulan) VALUES(?)',
        ["$kesimpulan2"]);
    await database.rawInsert(
        'INSERT INTO $tableKesimpulan ($columnKesimpulan) VALUES(?)',
        ["$kesimpulan3"]);
    await database.rawInsert(
        'INSERT INTO $tableKesimpulan ($columnKesimpulan) VALUES(?)',
        ["$kesimpulan4"]);
  }
}
