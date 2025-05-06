import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final IconData icondata;

  final String label;

  const CustomIconBtn({super.key, required this.icondata, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icondata, color: Colors.white),
        Text(label, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
