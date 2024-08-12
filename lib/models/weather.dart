import 'dart:convert';

class Main {
  num temp;
  num feels_like;
  num temp_min;
  num temp_max;
  num pressure;
  num humidity;
  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'feels_like': feels_like,
      'temp_min': temp_min,
      'temp_max': temp_max,
      'pressure': pressure,
      'humidity': humidity,
    };
  }

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] ?? 0,
      feels_like: map['feels_like'] ?? 0,
      temp_min: map['temp_min'] ?? 0,
      temp_max: map['temp_max'] ?? 0,
      pressure: map['pressure'] ?? 0,
      humidity: map['humidity'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Main.fromJson(String source) => Main.fromMap(json.decode(source));
}

class Weather {
  int id;
  String main;
  String description;
  String icon;
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id']?.toInt() ?? 0,
      main: map['main'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source));
}

class Wind {
  num speed;
  num deg;
  Wind({
    required this.speed,
    required this.deg,
  });

  Map<String, dynamic> toMap() {
    return {
      'speed': speed,
      'deg': deg,
    };
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] ?? 0,
      deg: map['deg'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) => Wind.fromMap(json.decode(source));
}

class WeatherData {
  List<Weather> data;
  String base;
  Main main;
  int visibility;
  Wind wind;
  int id;
  String name;
  int cod;
  WeatherData({
    required this.data,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.id,
    required this.name,
    required this.cod,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory WeatherData.fromMap(Map<String, dynamic> map) {
    return WeatherData(
      data: List<Weather>.from(
        ((map['data'] ?? []) as List).map(
          (x) => Weather.fromMap(x),
        ),
      ),
      base: map['base'] ?? '',
      main: Main.fromMap(map['main']),
      visibility: map['visibility']?.toInt() ?? 0,
      wind: Wind.fromMap(map['wind']),
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      cod: map['cod']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherData.fromJson(String source) =>
      WeatherData.fromMap(json.decode(source));
}
