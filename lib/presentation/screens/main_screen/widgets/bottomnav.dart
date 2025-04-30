import 'package:flutter/material.dart';

ValueNotifier<int> currentIndexNotifier = ValueNotifier(0);

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndexNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          onTap: (index) {
            currentIndexNotifier.value = index;
          },
          elevation: 0,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'New&Hot',
              icon: Icon(Icons.new_releases),
            ),
            BottomNavigationBarItem(
              label: 'Fast Laughs',
              icon: Icon(Icons.real_estate_agent_outlined),
            ),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),

            BottomNavigationBarItem(
              label: 'Downloads',
              icon: Icon(Icons.download),
            ),
          ],
        );
      },
    );
  }
}
