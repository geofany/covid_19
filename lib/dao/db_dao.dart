import 'package:covid_19/constants/strings.dart';
import 'package:covid_19/database/db.dart';
import 'package:covid_19/models/kesimpulan.dart';
import 'package:covid_19/models/kondisi.dart';

class DBDao {
  final dbProvider = DatabaseProvider.dbProvider;

  Future<List<Kondisi>> getAllKondisi() async {
    final db = await dbProvider.database;

    List<Map<String, dynamic>> result;
    result = await db.rawQuery("SELECT * FROM $tableKondisi");

    List<Kondisi> data = result.isNotEmpty
        ? result.map((item) => Kondisi.fromMap(item)).toList()
        : [];
    return data;
  }

  Future<Kesimpulan> getKesimpulan(int id) async {
    final db = await dbProvider.database;
    List<Map> maps = await db.query(tableKesimpulan,
        columns: [columnId, columnKesimpulan],
        where: '$columnId = ?',
        whereArgs: [id]);

    return maps.isNotEmpty ? Kesimpulan.fromMap(maps.first) : null;
  }
}
