

import 'package:bmi/view/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xff221935,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(
            0xff221935,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}