import 'package:flutter/material.dart';

import 'package:netflixx/core/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: Colors.white),
        kWidth,
        Container(color: Colors.blue, height: 30, width: 30),
        kWidth,
      ],
    );
  }
}
