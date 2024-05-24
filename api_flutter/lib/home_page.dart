import 'package:api_flutter/home_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BirClass? birClass;
  @override
  void initState() {
   birClass!.fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: birClass?.fetchData(),
       builder: (context, snapshot){
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()),);
        }else if(snapshot.hasData){
    return Column(children: [
      Text(snapshot.data!.base),
    ],);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
       }),
    );
  }
}