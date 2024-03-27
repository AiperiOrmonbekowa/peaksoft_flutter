import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = ThemeMode.system;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: themeMode,  
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                          themeMode = ThemeMode.light;
                      });
                    },
                    child: const Text("light"),
                    ),
                TextButton(
                    onPressed: () {
                      setState(() {
                            themeMode = ThemeMode.dark;
                      });
                    },
                    child: const Text("dark"),
                    ),
              ],
            ),],),
      )
    );
  }
}