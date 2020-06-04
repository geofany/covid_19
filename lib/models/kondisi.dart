import 'package:covid_19/constants/strings.dart';

class Kondisi {
  int id;
  String kondisi, luaran;

  Kondisi({this.id, this.kondisi});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnKondisi: kondisi,
      columnLuaran: luaran
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Kondisi.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    kondisi = map[columnKondisi];
    luaran = map[columnLuaran];
  }
}
