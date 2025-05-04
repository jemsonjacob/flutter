import 'package:flutter/material.dart';
import 'package:netflixx/core/colors/colors.dart';

class SearchTitleWidget extends StatelessWidget {
  final String title;

  const SearchTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: KWhiteColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
