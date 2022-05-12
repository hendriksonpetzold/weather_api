import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=417a367a36a4428e2ad7ec835ff10fd8&units=metric');

    var resposnse = await http.get(endpoint);
    var body = jsonDecode(resposnse.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
