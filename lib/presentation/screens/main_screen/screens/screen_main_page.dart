import 'package:flutter/material.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/presentation/screens/downloads/screen_downloads.dart';
import 'package:netflixx/presentation/screens/fast_laughs/screen_fast.dart';
import 'package:netflixx/presentation/screens/home/sreen_home.dart';
import 'package:netflixx/presentation/screens/main_screen/widgets/bottomnav.dart';
import 'package:netflixx/presentation/screens/new&hot/screen_new_hot.dart';
import 'package:netflixx/presentation/screens/search/screen_search_idle.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    ScreenHome(),
    ScreenNewHot(),
    ScreenFastLaugh(),
    ScreenSearchIdle(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,

      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: currentIndexNotifier,
          builder: (context, int value, _) {
            return SafeArea(child: Center(child: pages[value]));
          },
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
