import 'package:counter_app_pr/home/ekinchi_bet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: 
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
      const  Text("I'am Rich",style: TextStyle(fontSize: 42, color: Colors.red, fontFamily: 'GreatVibes-Regular'),
      ),
     const SizedBox(height: 15,),
         Image.asset('assets/images/diamond.jpeg'),
      const   SizedBox(height: 20,),
         ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const EkinchiBet()));
          }, child: const Text('Экинчи бетке өтүү', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),),
         ),
       ],
     )
      ,),
    );
  }
}