import 'package:api_dio/features/data/service/new_service.dart';
import 'package:flutter/material.dart';

List<String> cities = [
  'Bishkek',
  'Osh',
  'Talas',
  'Naryn',
  'Jalal-abad',
  'Batken',
];

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
    return  Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
           IconButton(
                        onPressed: () {
                       
                          setState(() { showButtom();}
                          
                          );
                        }, icon:  const Icon(
                          Icons.location_city_outlined,
                        ),)
        ],),
        Text(sn.data!.city),
        Text(sn.data!.id.toString()),
        Text(sn.data!.main),
        Text(sn.data!.description),
        
      ],),);
      }else{
      return  const CircularProgressIndicator();
      }
    }
    ),
    );
  }
   void showButtom() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: Colors.black38,
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return Card(
                child: ListTile(
                  onTap: () {
                    setState(() {
                     newService = null;
                    });
                    newService?.fetchData(city);
                    Navigator.pop(context);
                  },
                  title: Text(city),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
