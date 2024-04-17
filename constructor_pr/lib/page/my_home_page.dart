import 'package:constructor_pr/model/model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int jk = 0;
  void sultan() {
    setState(() {
      jk++;
    });
    if (jk == name.length) {
      jk = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 247, 173),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 111, 255, 248),
        title: const Center(
            child: Text(
          'Test',
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 51, 99)),
        )),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            name[jk].suroo,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          InkWell(
              onTap: () {
                sultan();
              },
              child: Container(
                height: 50,
                width: 200,
                color: Colors.green,
                child: const Center(
                    child: Text(
                  'True',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
              )),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                sultan();
              },
              child: Container(
                height: 50,
                width: 200,
                color: const Color.fromARGB(255, 175, 76, 76),
                child: const Center(
                  child: Text(
                    'False',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
