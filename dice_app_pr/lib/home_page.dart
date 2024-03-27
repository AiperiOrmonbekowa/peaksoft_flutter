import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void all() {setState(() {
  // });
  // }

  @override
  Widget build(BuildContext context) {
    Random random = Random();
   
    int firstDice1 = random.nextInt(6) + 1;
    int secondDice2 = random.nextInt(6) + 1;

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text('Тапшырма'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/dice$firstDice1.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset('assets/images/dice$secondDice2.png'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(50)),
            onPressed: () {
            setState(() {
              
            });
            },
            child: Text('all()'),
          ),
        ],
      ),
    );
  }
}
