import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/home/widgets/custombtnwidge.dart';
import 'package:netflixx/presentation/screens/new&hot/widget/cominsoonwidget.dart';
import 'package:netflixx/presentation/screens/new&hot/widget/everypne_watch.dart';
import 'package:netflixx/presentation/widgets/videowidget.dart';
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
              children: [comingsoonTabView(), everyoneTabView()],
            ),
          ),
        ),
      ),
    );
  }
}

Widget comingsoonTabView() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return CominSoonWidget();
    },
  );
}

Widget everyoneTabView() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return EveryOnewatching();
    },
  );
}
