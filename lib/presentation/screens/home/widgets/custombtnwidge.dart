import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final IconData icondata;

  final String label;

  final double textSize;

  final double iconSize;

  const CustomIconBtn({
    super.key,
    required this.icondata,
    required this.label,
    this.textSize = 18,
    this.iconSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icondata, color: Colors.white, size: iconSize),
        Text(label, style: TextStyle(fontSize: textSize)),
      ],
    );
  }
}
