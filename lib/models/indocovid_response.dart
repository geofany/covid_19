import 'dart:convert';

class IndoCovidResponse {
  String positif, sembuh, meninggal;
  IndoCovidResponse({this.positif, this.sembuh, this.meninggal});

  IndoCovidResponse.fromJson(Map<String, dynamic> map) {
    positif = map["positif"];
    sembuh = map["sembuh"];
    meninggal = map["meninggal"];
  }
}

List<IndoCovidResponse> fetchFromJson(String jsondata) {
  final data = json.decode(jsondata);
  return List<IndoCovidResponse>.from(
      data.map((item) => IndoCovidResponse.fromJson(item)));
}

class WorldCovidResponse{
  String value;
  WorldCovidResponse({this.value});

  WorldCovidResponse.fromJson(Map<String, dynamic> map) {
    value = map["value"];
  }
}