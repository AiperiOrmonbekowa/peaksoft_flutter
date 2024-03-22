import 'package:flutter/material.dart';

  class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
     required this.email,
    required this.name, 
    required this.profession, 
     
    });

 final String name;
 final String profession;
 final String email;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(name),
         const SizedBox(height: 10,),
                  Text(profession),
         const SizedBox(height: 10,),
          Text(email),
        ],
        ),
      ),
    );
  } 
}   