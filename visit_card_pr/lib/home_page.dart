import 'package:flutter/material.dart';
import 'package:visit_card_pr/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String profession = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(
          width: 360,
          child:  TextField(
            onChanged: (value) {
              name =  value;
            },
            decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'name',
                    ),
                  ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          width: 360,
          child:  TextField(
            onChanged: (value) {
              profession = value;
            },
            decoration: const  InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.device_hub),
                      hintText: 'profession',
                    ),
                  ),
        ),
        const  SizedBox(height: 15,),
         SizedBox(
          width: 360,
          child:  TextField(
            onChanged: (value) {
              email = value;
            },
            decoration:const  InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      hintText: 'email',
                    ),
                  ),
        ),
       const   SizedBox(height: 15,),
         ElevatedButton(onPressed: (){
          if (name.isEmpty && profession.isEmpty && email.isEmpty ) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('you have to fill'),
            ),
            );
          }else{
 Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(name:name,profession: profession, email: email,),
          ),
          );
          }
          },
           child: const Text('Log In'),
         ),
        ],
        ),
      ),
    );
  }
}
