import 'package:dio/dio.dart';
import 'package:weather/models/weather.dart';

class ApiRepository {
  static Future<WeatherData> callAPI() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10.84358&units=metric&lon=106.65609&appid=31f3cf9474ebab4c5ef907c55804f61f');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      throw e;
    }
  }
}
