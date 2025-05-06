import 'package:flutter/material.dart';
import 'package:netflixx/presentation/screens/fast_laughs/widgets/videolist_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return VideoListItemWidget(index: index);
          }),
        ),
      ),
    );
  }
}
