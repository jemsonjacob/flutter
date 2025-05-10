import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/bloc/downloads_bloc.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/downloads/download_widgets.dart';
import 'package:netflixx/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [SmartDownloads(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(
        context,
      ).add(DownloadsEvent.getDownloadImages());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return _widgetList[index];
          },

          itemCount: _widgetList.length,
        ),
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final imageList = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
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

        //pics
        //only need to rebuild this widget
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return (state.isLoading) || (state.downloads.length < 3)
                ? Center(child: CircularProgressIndicator())
                : SizedBox(
                  height: size.width * 0.90,
                  width: size.width,

                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.38,
                        backgroundColor: Colors.grey,
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downloads[0].posterPath}',

                        angle: 20,
                        margin: EdgeInsets.only(left: 100, bottom: 37),
                        size: Size(size.width * 0.34, size.height * 0.30), //3d
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downloads[1].posterPath}',
                        margin: EdgeInsets.only(right: 100, bottom: 30),
                        angle: -20,
                        size: Size(size.width * 0.34, size.height * 0.30), //1st
                      ),

                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downloads[2].posterPath}',
                        margin: EdgeInsets.only(bottom: 5),
                        size: Size(size.width * 0.37, size.height * 0.35),
                      ),
                    ],
                  ),
                );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //btns
        MaterialButton(
          color: KBtnBlue,
          minWidth: double.infinity,
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
    );
  }
}
