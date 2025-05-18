import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/home/widgets/custombtnwidge.dart';
import 'package:netflixx/presentation/widgets/videowidget.dart';

class EveryOneWatchinWidget extends StatelessWidget {
  final String posterPath;
  final String tvName;
  final String description;
  const EveryOneWatchinWidget({
    super.key,
    required this.posterPath,
    required this.tvName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tall Girl',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),

        Text(
          'gsgdsdufgyadsvgvadshvgsvayucasyuyvsadvvvafhsdvuhvsdfghvhasvdghvghacvsvgvascggacvstyv',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 25),
        VideoWidget(url: ''),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //img
              SizedBox(
                width: 90,
                height: 80,
                child: Image.network(
                  'https://static.wikia.nocookie.net/lostinspace/images/0/0f/FinalSeasonPoster.jpg/revision/latest?cb=20211106145938',
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              //btns
              CustomIconBtn(icondata: Icons.share, label: 'Share'),
              kWidth,
              CustomIconBtn(icondata: Icons.add, label: 'My List'),
              kWidth,
              CustomIconBtn(icondata: Icons.play_arrow, label: 'Play'),
            ],
          ),
        ),
      ],
    );
  }
}
