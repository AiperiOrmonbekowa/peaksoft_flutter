import 'package:flutter/material.dart';
import 'package:flutter_application_00/model.dart';
import 'package:flutter_application_00/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:  GridView.builder( padding: const EdgeInsets.all(10),
              itemCount: birlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return BirCard(
                  item: birlist[index],
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage( item: birlist[index],)));
                },
                ) ;}
                ),
    );
  }
}

class BirCard extends StatelessWidget {
  const BirCard({
    super.key, required this.item, this.onTap,
  });
  final Person item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.blue,
        child: Text(item.name),
        
        ),
    );
  }
}   