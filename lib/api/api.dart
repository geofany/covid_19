import 'dart:convert';

import 'package:covid_19/models/indocovid_response.dart';
import 'package:http/http.dart' show Client;

class ApiProvider {
  Client client = Client();

  final _baseUrl =
      "https://api.kawalcorona.com";

  Future<List<IndoCovidResponse>> fetchIndoCovid() async {
    final response = await client.get("$_baseUrl/indonesia");
    if (response.statusCode == 200) {
      return fetchFromJson(response.body); 
    } else {
      throw Exception('Failed to load api indonesia covid');
    }
  }

  Future<WorldCovidResponse> fetchWorldCovid() async {
    final response = await client.get("$_baseUrl/positif");
    if (response.statusCode == 200) {
      return WorldCovidResponse.fromJson(json.decode(response.body)); 
    } else {
      throw Exception('Failed to load api world covid');
    }
  }

  Future<WorldCovidResponse> fetchWorldCovidDeath() async {
    final response = await client.get("$_baseUrl/meninggal");
    if (response.statusCode == 200) {
      return WorldCovidResponse.fromJson(json.decode(response.body)); 
    } else {
      throw Exception('Failed to load api world covid death');
    }
  }

  Future<WorldCovidResponse> fetchWorldCovidRecover() async {
    final response = await client.get("$_baseUrl/sembuh");
    if (response.statusCode == 200) {
      return WorldCovidResponse.fromJson(json.decode(response.body)); 
    } else {
      throw Exception('Failed to load api world covid recover');
    }
  }
}
