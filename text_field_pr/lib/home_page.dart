import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/ramadan.jpg'),
    fit: BoxFit.cover ),
     ),
     child:  const Center(
       child: SizedBox(
        width: 320,
         child: TextField(
          
          decoration: InputDecoration(
            icon: Icon(Icons.abc),
            prefixIcon: Icon(Icons.favorite),
            border: OutlineInputBorder(borderSide: BorderSide(width: 15, color: Colors.black),
          ))),
       ),
     ),
     ) ,
     
      
    );
  }
}