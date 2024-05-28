import 'package:flutter/material.dart';
import 'package:flutter_api_pr/features/data/servic/api_fun.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BirClass? sultan;
  @override
  void initState() {
    super.initState();
    BirClass().fetchdt();
    sultan = BirClass();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: FutureBuilder(
          future: sultan!.fetchdt(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('kelgen jok'),
              );
            } else if (snapshot.hasData) {
              return Column(
                children: [
                  First(
                    first: snapshot.data!.login,
                    second: snapshot.data!.id,
                    third: snapshot.data!.url,
                  ),
                  // First(first: , second: second, third: third)
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }
          ),
    );
  }
}

class First extends StatelessWidget {
  const First({
    super.key,
    required this.first,
    required this.second,
    required this.third,
  });
  final String first;
  final int second;
  final String third;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(first),
        Text(second.toString()),
        Image.network(third,width: 200,),
      ],
    );
  }
}
