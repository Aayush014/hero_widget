import 'package:flutter/material.dart';
import 'package:hero_widget/Screens/Details%20Screen/details_screen.dart';
import 'package:hero_widget/Screens/Home%20Screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // initialRoute: "more",
      routes: {
        '/' : (context) => const HomeScreen(),
        'more' : (context) => const DetailsScreen(),
      },
    );
  }
}