
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        Image.asset('assets/icons/star.png'),
        SvgPicture.asset('assets/icons/africa.svg',color: Colors.amber,width: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Container(  height: 30,
            width: 60,
            decoration: BoxDecoration(color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
           ), 
           child:const Center(child: Text('белый',style: TextStyle(color: Colors.red),
            ),
            ) ,
          ),
         const SizedBox(width: 50),
         Container(height: 40,
            width: 60,
            decoration: BoxDecoration(color: Colors.orange,
            borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(child: Text('белый' ,style: TextStyle(fontWeight: FontWeight.bold),),
            ) ,
          ),
          ],
          ),
         ],
      ),
      
     );
  }
}
