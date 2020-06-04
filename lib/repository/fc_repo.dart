import 'package:covid_19/dao/db_dao.dart';

class ForwardChainingRepository {
  final dbDao = DBDao();

  Future getKesimpulan(int id) => dbDao.getKesimpulan(id);
  Future getAllKondisi() => dbDao.getAllKondisi();
}
