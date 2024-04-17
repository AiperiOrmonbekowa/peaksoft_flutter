import 'package:flutter/material.dart';
import 'package:quiz_app/components/text_widget.dart';
import 'package:quiz_app/model/model.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

 @override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const TextWisfet(text: 'Salam',),
centerTitle: true,
 ),
 body:  Center(
   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextWisfet(text: 'Text 1'),
      TextWisfet(text: 'Text 2'),
        TextWisfet(text: 'Text 3'),
        TextWisfet(text: '',),

        Text(birList[0].uluty)
   ],),
 ),
  );
  }
}


