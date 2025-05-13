import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixx/application/search/bloc/search_bloc.dart';
import 'package:netflixx/core/constant.dart';
import 'package:netflixx/domain/debounce/debounce.dart';
import 'package:netflixx/presentation/screens/search/widgets/search_idle_widget.dart';
import 'package:netflixx/presentation/screens/search/widgets/search_result_widget.dart';

class ScreenSearchIdle extends StatelessWidget {
  ScreenSearchIdle({super.key});

  final debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
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

                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  debouncer.run(() {
                    BlocProvider.of<SearchBloc>(
                      context,
                    ).add(SearchMovie(movieQuery: value));
                  });
                },
              ),

              kHeight,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.searchResultList.isEmpty) {
                      return SearchIdleWidget();
                    } else {
                      return SearchResultWidget();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
