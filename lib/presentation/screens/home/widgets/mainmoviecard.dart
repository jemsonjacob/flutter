import 'package:flutter/material.dart';

class MainMovieTileWidget extends StatelessWidget {
  const MainMovieTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            'https://images-cdn.ubuy.co.in/680c0a8135dc230c670b4506-binfa-wall-art-music-prints-bedroom.jpg',
          ),
        ),
      ),
    );
  }
}
