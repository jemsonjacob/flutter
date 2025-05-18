import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflixx/application/hot_and_new/hot_new_bloc.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/new&hot/widget/cominsoonwidget.dart';
import 'package:netflixx/presentation/screens/new&hot/widget/everyone_watching_widget.dart';
//import 'package:netflixx/presentation/screens/home/widgets/custombtnwidge.dart';

final String title = 'New & Hot';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              Spacer(),
              Icon(Icons.cast, color: Colors.white),
              kWidth,
              Container(color: Colors.blue, height: 30, width: 30),
              kWidth,
            ],
            bottom: TabBar(
              dividerColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              tabs: [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: "👀 Everyone's Watching"),
              ],
            ),
          ),
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                //key is for not to get data duplication
                ComingSoon(key: Key('coming_soon')),
                EveryOnesWatching(key: Key('everyonewatching')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotNewBloc>(context).add(loadDataInComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotNewBloc>(context).add(loadDataInComingSoon());
      },
      child: BlocBuilder<HotNewBloc, HotNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator(strokeWidth: 2));
          } else if (state.isError) {
            return Center(child: Text('Error occured'));
          } else if (state.commingSoonlist.isEmpty) {
            return Center(child: Text('List is Empty'));
          } else {
            return ListView.builder(
              itemCount: state.commingSoonlist.length,
              itemBuilder: (BuildContext context, index) {
                final movie = state.commingSoonlist[index];
                if (movie.id == null) {
                  return SizedBox();
                }
                print(movie.releaseDate);
                final _date = DateTime.parse(movie.releaseDate!);
                final formatDate = DateFormat.yMMMEd('en_US').format(_date);
                print(formatDate);
                return CominSoonWidget(
                  id: movie.id.toString(),
                  month:
                      formatDate.split(' ').first.substring(0, 3).toUpperCase(),
                  day: movie.releaseDate!.split('-')[1],
                  posterpath: '$imageAppendUrl${movie.posterPath}',
                  moviename: movie.originalTitle ?? 'No title',
                  description: movie.overview ?? "No description",
                );
              },
            );
          }
        },
      ),
    );
  }
}

//everyone
class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotNewBloc>(context).add(loadDataInEveryoneWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotNewBloc>(context).add(loadDataInEveryoneWatching());
      },
      child: BlocBuilder<HotNewBloc, HotNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator(strokeWidth: 2));
          } else if (state.isError) {
            return Center(child: Text('Error occured'));
          } else if (state.everyoneWatchinglist.isEmpty) {
            return Center(child: Text('List is Empty'));
          } else {
            return ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: state.everyoneWatchinglist.length,
              itemBuilder: (BuildContext context, index) {
                final tv = state.everyoneWatchinglist[index];
                if (tv.id == null) {
                  return SizedBox();
                }

                return EveryOneWatchinWidget(
                  posterPath: '$imageAppendUrl${tv.posterPath}',
                  tvName: tv.originalName ?? 'No title',
                  description: tv.overview ?? "No description",
                );
              },
            );
          }
        },
      ),
    );
  }
}
