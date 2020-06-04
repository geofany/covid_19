import 'dart:async';

import 'package:covid_19/models/indocovid_response.dart';
import 'package:covid_19/repository/api_repo.dart';

class ApiBloc {
  ApiRepository _apiRepository = ApiRepository();
  final _apiIndoController = StreamController<List<IndoCovidResponse>>.broadcast();
  final _apiWorldController = StreamController<WorldCovidResponse>.broadcast();
  final _apiWorldDeathController = StreamController<WorldCovidResponse>.broadcast();
  final _apiWorldRecoverController = StreamController<WorldCovidResponse>.broadcast();
  

  get stream => _apiIndoController.stream;
  get streamWorld => _apiWorldController.stream;
  get streamWorldDeath => _apiWorldDeathController.stream;
  get streamWorldRecover => _apiWorldRecoverController.stream;

  fetchIndoCovid() async{
    List<IndoCovidResponse> _response = await _apiRepository.fetchIndoCovid();
    _apiIndoController.sink.add(_response);
  }

  fetchWorldCovid() async{
    WorldCovidResponse _response = await _apiRepository.fetchWorldCovid();
    _apiWorldController.sink.add(_response);
  }

  fetchWorldCovidDeath() async{
    WorldCovidResponse _response = await _apiRepository.fetchWorldCovidDeath();
    _apiWorldDeathController.sink.add(_response);
  }

  fetchWorldCovidRecover() async{
    WorldCovidResponse _response = await _apiRepository.fetchWorldCovidRecover();
    _apiWorldRecoverController.sink.add(_response);
  }

  dispose() {
    _apiIndoController.close();
    _apiWorldController.close();
    _apiWorldDeathController.close();
    _apiWorldRecoverController.close();
  }
}

final apiBloc = ApiBloc();