import 'package:flutter/material.dart';
import 'package:netflixx/application/downloads/downloads_bloc.dart';
import 'package:netflixx/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflixx/application/search/bloc/search_bloc.dart';
import 'package:netflixx/core/colors/colors.dart';
import 'package:netflixx/domain/di/injectable.dart';
import 'package:netflixx/presentation/screens/main_screen/screens/screen_main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //call downloadbloc
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: bgColor,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
