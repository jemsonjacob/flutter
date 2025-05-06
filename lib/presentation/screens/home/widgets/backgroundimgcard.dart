import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/home/sreen_home.dart';
import 'package:netflixx/presentation/screens/home/widgets/custombtnwidge.dart';

class BackgroundimgcardWidget extends StatelessWidget {
  const BackgroundimgcardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://format.creatorcdn.com/083cf68e-32b5-46d9-9ae3-6ffc4be72568/0/0/0/0,0,1000,1505,2500,1505/0-0-0/26c1882b-a41b-4429-bde1-7c5a6f123ed7/1/1/Star_Wars_Rogue_1_RI_SM.jpg?fjkss=exp=2061991432~hmac=a92919756d251a8bed52ebfc83b6290d1e2dd866bc46212e7ce92d50733981ef&1000',
              ),
            ),
          ),
        ),
        kHeight,
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIconBtn(icondata: Icons.add, label: 'My List'),

                CustomPlayBtn(),

                CustomIconBtn(icondata: Icons.info, label: 'Info'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
