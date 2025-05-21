import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/bloc/home_bloc_bloc.dart';
import 'package:netflixx/application/fastLaugh/fast_laugh_bloc.dart';

import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/home/widgets/backgroundimgcard.dart';
//import 'package:netflixx/presentation/screens/home/widgets/custombtnwidge.dart';
import 'package:netflixx/presentation/screens/home/widgets/mainmoviecaedwidget.dart';
//import 'package:netflixx/presentation/screens/home/widgets/mainmoviecard.dart';
import 'package:netflixx/presentation/screens/home/widgets/numbercardwidget.dart';
import 'package:netflixx/presentation/screens/search/widgets/maintitle_widget.dart';

final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBlocBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection scrollDirection = notification.direction;

              if (scrollDirection == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (scrollDirection == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },

            child: Stack(
              children: [
                BlocBuilder<HomeBlocBloc, HomeBlocState>(
                  builder: (context, state) {
                    if (state.isError) {
                      return Center(child: Text('Errror while loading'));
                    } else if (state.isLoading) {
                      return Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    }
                    //released past year
                    final releasedpostyear =
                        state.pastMoviesList.map((e) {
                          return '$imageAppendUrl${e.posterPath}';
                        }).toList();
                    // print(releasedpostyear.length);//20
                    //trending
                    final trnding =
                        state.trendingMoviesList.map((e) {
                          return '$imageAppendUrl${e.posterPath}';
                        }).toList();

                    final horror =
                        state.horrorMoviesList.map((e) {
                          return '$imageAppendUrl${e.posterPath}';
                        }).toList();
                    final drama =
                        state.dramaMoviesList.map((e) {
                          return '$imageAppendUrl${e.posterPath}';
                        }).toList();

                    //top10
                    final topten =
                        state.topTvList.map((t) {
                          return '$imageAppendUrl${t.posterPath}';
                        }).toList();
                    topten.shuffle();
                    return ListView(
                      children: [
                        BackgroundimgcardWidget(),

                        MainMovieCard(
                          title: 'Released in past',
                          posterPaths: releasedpostyear,
                        ),
                        kHeight,
                        MainMovieCard(
                          title: 'Trending Now',
                          posterPaths: trnding,
                        ),
                        kHeight,
                        NumberTitleCard(posterPaths: topten),
                        kHeight,
                        MainMovieCard(title: 'Horror', posterPaths: horror),
                        kHeight,
                        MainMovieCard(title: 'Tense Drama', posterPaths: drama),
                        kHeight,
                      ],
                    );
                  },
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            //logo cast blue
                            children: [
                              Image.network(
                                'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png',
                                width: 70,
                                height: 70,
                              ),
                              Spacer(),
                              Icon(Icons.cast, color: Colors.white),
                              kWidth,
                              Container(
                                color: Colors.blue,
                                height: 30,
                                width: 30,
                              ),
                              kWidth,
                            ],
                          ),
                          //tv show movies catre
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Category',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomPlayBtn extends StatelessWidget {
  const CustomPlayBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      icon: Icon(Icons.play_arrow),
      label: Text('Play'),
    );
  }
}

class NumberTitleCard extends StatelessWidget {
  final List<String> posterPaths;
  const NumberTitleCard({super.key, required this.posterPaths});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleWidget(title: 'Top Movies in India'),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posterPaths.length,
            itemBuilder: (context, index) {
              return Numbercardwidget(index: index, imgurl: posterPaths[index]);
            },
          ),
        ),
      ],
    );
  }
}
