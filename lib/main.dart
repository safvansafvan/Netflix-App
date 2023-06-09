import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix_npp/application/download/dowload_bloc.dart';
import 'package:netflix_npp/application/home/home_bloc.dart';
import 'package:netflix_npp/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/domain/core/di/injectable.dart';
import 'package:netflix_npp/presentation/splash/splash.dart';
import 'application/fast_laugh/fast_laugh_bloc.dart';
import 'application/search/search_bloc.dart';

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
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
        BlocProvider(create: (context) => getIt<HotAndNewBloc>()),
         BlocProvider(create: (context) => getIt<HomeBloc>())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            fontFamily: GoogleFonts.montserrat().fontFamily,
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: backgroundcolor,
            textTheme: const TextTheme(
                // ignore: deprecated_member_use
                bodyText1: TextStyle(color: Colors.white),
                // ignore: deprecated_member_use
                bodyText2: TextStyle(color: Colors.white))),
        home: const ScreenSplash()
      ),
    );
  }
}
