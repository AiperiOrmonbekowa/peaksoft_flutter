import 'package:api_dio/features/data/service/new_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewService? newService;
  @override
  void initState() {
   newService = NewService();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.amber,
    body: FutureBuilder(future:newService?.fetchData() , builder: (context, sn){
      if (sn.hasError) {
      return  Center(child: Text(sn.error.toString()),);
      }else if(sn.hasData){
    return  Center(child: Column(children: [
        Text(sn.data!.name),
        Text(sn.data!.airDate),
        Text(sn.data!.episode),
        Text(sn.data!.id.toString(),
        ),
      ],),);
      }else{
      return  const CircularProgressIndicator();
      }
    }
    ),
    );
  }
}
