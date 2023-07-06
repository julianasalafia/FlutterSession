import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    final queryParameters = {
      'q': city,
      'appid': '47d15a02ee7501754f83e2e344aa0ba1'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);
    print(response.body);

    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
