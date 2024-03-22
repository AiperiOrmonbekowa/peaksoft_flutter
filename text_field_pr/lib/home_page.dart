// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:text_field_pr/second_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
     body: Container(
      height: double.infinity,
      width: double.infinity, 
      decoration: const BoxDecoration(image: DecorationImage(
      image: AssetImage('assets/images/ramadan.jpg'),
      fit: BoxFit.cover ),
    ),
     child: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
            width: 320,
             child: TextField(
              decoration: InputDecoration(
                hintText: 'email ',
                prefixIcon: const Icon(Icons.person),
                 border: OutlineInputBorder(borderSide:const BorderSide(width: 15, color: Colors.black),
                 borderRadius: BorderRadius.circular(10),
              ),
              ),
              ),
           ),
          const SizedBox(height: 20,),
              SizedBox(
            width: 320,
             child: TextField(
              decoration: InputDecoration(
                 hintText: 'password',
                prefixIcon: const Icon(Icons.password),
                border: OutlineInputBorder(borderSide: const BorderSide(width: 15, color: Colors.black),
                 borderRadius: BorderRadius.circular(10)
              ),
              ),
              ),
           ),
            const SizedBox(height: 20,),
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>  Secondpage(email: email, password: password,),
            ),
            );
           }, child: const Text('login in'),
           ),
         ],
       ),
     ),
     ) ,
    );
  }
}
