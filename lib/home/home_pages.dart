import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/home/widgets/home_detail_weather.dart';
import 'package:weather/home/widgets/home_location.dart';
import 'package:weather/home/widgets/home_temp.dart';
import 'package:weather/home/widgets/home_weather_icon.dart';
import 'package:weather/provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(29, 108, 243, 1),
              Color.fromRGBO(25, 210, 254, 1)
            ])),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeWeatherIcon(),
              HomeTemp(),
              HomeLocation(
                key: Key('a'),
              ),
              SizedBox(
                height: 40,
              ),
              HomeDetail(),
            ]),
      ),
    );
  }
}
