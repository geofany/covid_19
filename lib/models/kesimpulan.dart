import 'package:covid_19/constants/strings.dart';

class Kesimpulan {
  int id;
  String kesimpulan;

  Kesimpulan({this.id, this.kesimpulan});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnKesimpulan: kesimpulan,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Kesimpulan.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    kesimpulan = map[columnKesimpulan];
  }
}
