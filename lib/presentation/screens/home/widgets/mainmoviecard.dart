import 'package:flutter/material.dart';

class MainMovieTileWidget extends StatelessWidget {
  final String imgurl;
  const MainMovieTileWidget({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(imgurl)),
      ),
    );
  }
}
