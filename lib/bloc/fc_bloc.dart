import 'dart:async';

import 'package:covid_19/models/kesimpulan.dart';
import 'package:covid_19/models/kondisi.dart';
import 'package:covid_19/repository/fc_repo.dart';

class ForwardChainingBloc {
  final _repository = ForwardChainingRepository();
  final _kondisiController = StreamController<List<Kondisi>>.broadcast();
  final _kesimpulanController = StreamController<Kesimpulan>.broadcast();

  get kondisiStream => _kondisiController.stream;
  get kesimpulanStream => _kesimpulanController.stream;

  getAllKondisi() async {
    _kondisiController.sink.add(await _repository.getAllKondisi());
  }

  getKesimpulan(int id) async {
    _kesimpulanController.sink.add(await _repository.getKesimpulan(id));
  }

  dispose() {
    _kondisiController.close();
    _kesimpulanController.close();
  }
}
