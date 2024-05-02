import 'package:bottom_navigation/pages/search_page.dart';
import 'package:bottom_navigation/pages/second_page.dart';
import 'package:bottom_navigation/pages/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
late List <Widget> pages;

@override
  void initState(){super.initState();

  
  pages = [SecondPage(), SearcPage() , SettingPage(),  ];
}

    int _selectedPage = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: pages[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: _onTapItem,
          mouseCursor: SystemMouseCursors.grabbing,
          unselectedItemColor: Colors.orange,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
          ],
        ),

    );
  }
}