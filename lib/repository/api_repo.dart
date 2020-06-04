import 'package:covid_19/api/api.dart';
import 'package:covid_19/models/indocovid_response.dart';

class ApiRepository {
  ApiProvider _apiProvider = ApiProvider();
  
  Future<List<IndoCovidResponse>> fetchIndoCovid() =>
      _apiProvider.fetchIndoCovid();

  Future<WorldCovidResponse> fetchWorldCovid() =>
      _apiProvider.fetchWorldCovid();

  Future<WorldCovidResponse> fetchWorldCovidDeath() =>
      _apiProvider.fetchWorldCovidDeath();

  Future<WorldCovidResponse> fetchWorldCovidRecover() =>
      _apiProvider.fetchWorldCovidRecover();
}
