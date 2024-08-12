import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    final now = df.format(DateTime.now());
    return Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Thành phố Hồ Chí Minh",
              style: TextStyle(fontSize: 28, color: Colors.white),
            )
          ],
        ),
        const SizedBox(width: 20, height: 17),
        Text(
          now,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ],
    );
  }
}
