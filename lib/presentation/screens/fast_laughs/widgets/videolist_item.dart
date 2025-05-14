// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:netflixx/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

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
    final videoUrl = videoUrls[index % videoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            posterPath == null
                                ? null
                                : NetworkImage('$imageAppendUrl$posterPath'),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideoIdsNotifier,
                      builder: (
                        BuildContext context,
                        Set<int> newLikedListIds,
                        _,
                      ) {
                        final _index = index;

                        if (newLikedListIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              likedVideoIdsNotifier.value.remove(_index);
                              likedVideoIdsNotifier.notifyListeners();
                            },
                            child: VideoIcons(
                              icondata: Icons.favorite,
                              title: 'Liked',
                            ),
                          );
                        }

                        return GestureDetector(
                          onTap: () {
                            likedVideoIdsNotifier.value.add(_index);
                            likedVideoIdsNotifier.notifyListeners();
                          },
                          child: VideoIcons(
                            // <-- Fix: you were missing this
                            icondata: Icons.emoji_emotions,
                            title: 'LOL',
                          ),
                        );
                      },
                    ),

                    kHeight,
                    VideoIcons(
                      icondata: Icons.my_library_add_sharp,
                      title: 'My List',
                    ),
                    kHeight,
                    GestureDetector(
                      onTap: () {
                        final movieUrl =
                            VideoListItemInheritedWidget.of(
                              context,
                            )?.movieData.posterPath;
                        if (movieUrl != null) {
                          Share.share(movieUrl);
                        }
                      },
                      child: VideoIcons(icondata: Icons.share, title: 'Share'),
                    ),
                    kHeight,
                    VideoIcons(icondata: Icons.play_arrow, title: 'Play'),

                    // CircleAvatar(radius: 20),
                    // CircleAvatar(radius: 20),
                    // CircleAvatar(radius: 20),
                  ],
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

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
  });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,

      child:
          _videoPlayerController.value.isInitialized
              ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
              : const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }
}
