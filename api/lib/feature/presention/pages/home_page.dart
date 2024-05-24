
import 'package:api/feature/data/service/weather_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherRepo? weatherRepo;
  @override
  void initState() {
   weatherRepo = WeatherRepo();
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: weatherRepo?.fetchData(), builder: (context, snapshot){
    if (snapshot.hasError) {
      return Center(child: Text(snapshot.error.toString()),);
    }else if(snapshot.hasData){
      return Column(children: [
Text(snapshot.data!.main),
Text(snapshot.data!.id.toString()),
Text(snapshot.data!.desc),
Text(snapshot.data!.icon),
      ],);
    }else{
      return const CircularProgressIndicator();
    }
      }
      ),
    );
  }
}