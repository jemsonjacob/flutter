import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          child: ListView.separated(
            shrinkWrap:
                true, //list create cheyumbo 1 itemthine height thane list full use cheyan
            itemBuilder: (ctx, index) => TopSearchItemTile(),
            //height
            separatorBuilder: (ctx, index) => kHeight,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

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
        Expanded(child: Text("Movies")),
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
