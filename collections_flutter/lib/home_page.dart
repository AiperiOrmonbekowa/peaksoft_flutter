import 'package:collections_flutter/model.dart';
import 'package:flutter/material.dart';

 class HomePage extends StatelessWidget {
   HomePage({super.key});  

  @override
  Widget build(BuildContext context) {

 return  Scaffold(
      appBar: AppBar(title:const Text('Collections',),
      centerTitle: true,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name[5], style: const TextStyle(fontSize: 30),),
        const  SizedBox(height: 80,),
           Text(name[1], style: const TextStyle(fontSize: 30),),
        ],
        ),
      ),
    );
  }
}
