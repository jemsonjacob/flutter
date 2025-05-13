import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflixx/presentation/screens/fast_laughs/widgets/videolist_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: const CircularProgressIndicator(strokeWidth: 2),
              );
            } else if (state.isError) {
              return Center(child: Text("Errror while loading"));
            } else if (state.videoList.isEmpty) {
              return Center(child: Text("List is empty"));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return VideoListItemInheritedWidget(
                    key: Key(index.toString()),
                    widget: VideoListItemWidget(index: index),
                    movieData: state.videoList[index],
                  );
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
