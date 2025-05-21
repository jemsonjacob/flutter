import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/home/widgets/mainmoviecard.dart';
import 'package:netflixx/presentation/screens/search/widgets/maintitle_widget.dart';

class MainMovieCard extends StatelessWidget {
  final String title;
  final List<String> posterPaths;

  const MainMovieCard({
    super.key,
    required this.title,
    required this.posterPaths,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posterPaths.length,
            itemBuilder: (context, index) {
              return MainMovieTileWidget(imgurl: posterPaths[index]);
            },
          ),
        ),
      ],
    );
  }
}
