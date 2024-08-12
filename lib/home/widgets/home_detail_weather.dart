import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          children: [
            Image(
              image: AssetImage('assets/img/home/image.png'),
              width: 70,
              height: 70,
              color: Colors.white,
            ),
            Text(
              '5km/h',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/img/home/huminity.png',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const Text(
              '30%',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
