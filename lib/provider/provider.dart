import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/repositories/repository_api.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callAPI();
    return result;
  }
}
