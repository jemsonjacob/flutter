import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final imageList = [
    "assests/images/img1.jpg",
    "assests/images/img2.jpg",
    "assests/images/img3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                kWidth,
                Icon(Icons.settings, color: KWhiteColor),
                kWidth,
                Text(
                  'Smart Downloads',
                  style: TextStyle(fontSize: 14, color: KWhiteColor),
                ),
              ],
            ),
            kHeight,
            Text(
              textAlign: TextAlign.center,
              "Introducing Downloads for you",
              style: TextStyle(color: KWhiteColor, fontSize: 18),
            ),
            kHeight,
            Text(
              textAlign: TextAlign.center,
              "We'll download a personalised selection of\n movies and shows for you, so there is\n always something to watch on your\n device",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

            //pic
            SizedBox(
              height: size.width,
              width: size.width,

              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.35,
                    backgroundColor: Colors.grey,
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[1],
                    angle: 20,
                    margin: EdgeInsets.only(left: 100, bottom: 44),
                    size: Size(size.width * 0.34, size.height * 0.30), //3d
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: EdgeInsets.only(right: 100, bottom: 44),
                    angle: -20,
                    size: Size(size.width * 0.34, size.height * 0.30), //1st
                  ),

                  DownloadsImageWidget(
                    imageList: imageList[2],
                    margin: EdgeInsets.only(bottom: 10),
                    size: Size(size.width * 0.37, size.height * 0.35),
                  ),
                ],
              ),
            ),
            //btns
            MaterialButton(
              color: KBtnBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              child: Text(
                "Set up",
                style: TextStyle(color: KWhiteColor, fontSize: 20),
              ),
            ),
            //btn2
            MaterialButton(
              color: KBtnWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              child: Text(
                "See what you can download",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imageList),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
