import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  const HomeTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "32",
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          "0",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}
