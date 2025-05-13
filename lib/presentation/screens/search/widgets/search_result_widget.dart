import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/search/bloc/search_bloc.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/search/widgets/maintitle_widget.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.7,
                shrinkWrap: true,
                children: List.generate(20, (index) {
                  final movie = state.searchResultList[index];
                  return MainCard(imageUrl: movie.posterImageUrl);
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({super.key, required this.imageUrl});

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
