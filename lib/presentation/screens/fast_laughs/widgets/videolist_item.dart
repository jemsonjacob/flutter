import 'package:flutter/material.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  const VideoListItemInheritedWidget({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);

  final Widget widget;
  final Downloads movieData;

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }

  @override
  bool updateShouldNotify(VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }
}

class VideoListItemWidget extends StatelessWidget {
  final int index;

  const VideoListItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ), //to give padong from both top &btm
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left portion
                CircleAvatar(
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off),
                  ),
                ),

                //right portion
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            posterPath == null
                                ? null
                                : NetworkImage('$imageAppendUrl$posterPath'),
                      ),
                      kHeight,
                      VideoIcons(icondata: Icons.emoji_emotions, title: 'LOL'),
                      kHeight,
                      VideoIcons(
                        icondata: Icons.my_library_add_sharp,
                        title: 'My List',
                      ),
                      kHeight,
                      VideoIcons(icondata: Icons.share, title: 'Share'),
                      kHeight,
                      VideoIcons(icondata: Icons.play_arrow, title: 'Play'),

                      // CircleAvatar(radius: 20),
                      // CircleAvatar(radius: 20),
                      // CircleAvatar(radius: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoIcons extends StatelessWidget {
  final IconData icondata;

  final String title;

  const VideoIcons({super.key, required this.icondata, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icondata, color: Colors.white, size: 20),
        Text(title, style: TextStyle(fontSize: 16, color: KWhiteColor)),
      ],
    );
  }
}
