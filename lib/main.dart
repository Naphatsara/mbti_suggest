import 'package:flutter/material.dart';
import 'package:mbti_suggest/pages/analysts_page.dart';
import 'package:mbti_suggest/pages/diplomats_page.dart';
import 'package:mbti_suggest/pages/explorers_page.dart';
import 'package:mbti_suggest/pages/home_page.dart';
import 'package:mbti_suggest/pages/sentinels_page.dart';
import 'package:mbti_suggest/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      //home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomePage.routeName: (context) => const HomePage(),
        AnalystsPage.routeName : (context) => const AnalystsPage(),
        DiplomatsPage.routeName : (context) => const DiplomatsPage(),
        SentinelsPage.routeName : (context) => const SentinelsPage(),
        ExplorersPage.routeName : (context) => const ExplorersPage(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

