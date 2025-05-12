import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/bloc/search/bloc/search_bloc.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/search/widgets/maintitle_widget.dart';

final imageUrl = 'https://m.media-amazon.com/images/I/81vRg6RVaFL._SY879_.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(title: 'Top Searchs'),
        kHeight,
        //last element have a space
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return Center(child: Text('Error occured'));
              } else if (state.idleList.isEmpty) {
                return Center(child: Text('List is empty'));
              }
              return ListView.separated(
                shrinkWrap:
                    true, //list create cheyumbo 1 itemthine height thane list full use cheyan
                itemBuilder: (ctx, index) {
                  final movie = state.idleList[index];
                  return TopSearchItemTile(
                    title: movie.title ?? 'No title provide',
                    imageUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                },
                //height
                separatorBuilder: (ctx, index) => kHeight,
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kWidth,
        Expanded(child: Text(title)),
        CircleAvatar(
          backgroundColor: KWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Icon(CupertinoIcons.play, color: KWhiteColor),
          ),
        ),
      ],
    );
  }
}
