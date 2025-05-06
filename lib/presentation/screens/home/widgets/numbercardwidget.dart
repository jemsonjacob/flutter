import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixx/core/colors/colors.dart';

class Numbercardwidget extends StatelessWidget {
  final int index;

  const Numbercardwidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 10, height: 150),
            Container(
              height: 250,
              width: 140,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://img.posterstore.com/zoom/wb0202-8theflash-movie50x70.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 110,
          left: 1,
          child: BorderedText(
            strokeWidth: 12,
            strokeColor: KWhiteColor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: 55,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
