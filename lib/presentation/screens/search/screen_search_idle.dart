import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/presentation/screens/search/screen_search.dart';
import 'package:netflixx/presentation/screens/search/widgets/search_idle_widget.dart';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: const Color.fromARGB(165, 158, 158, 158),
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.white),
                suffixIcon: Icon(CupertinoIcons.xmark, color: Colors.white),
                style: TextStyle(color: Colors.white),
              ),
              kHeight,
              Expanded(
                child: ScreenSearchResults(),

                // SearchIdleWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
