import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/search/widgets/maintitle_widget.dart';

final imageUrl =
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  //show gridview
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(title: 'TV Shows & Movies'),
        kHeight,

        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.7,
            shrinkWrap: true,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
