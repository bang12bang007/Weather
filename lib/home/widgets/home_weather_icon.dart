import 'package:flutter/material.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          "assets/img/home/CloudyWithSun.png",
          width: size.width / 2,
          fit: BoxFit.cover,
        ));
  }
}
