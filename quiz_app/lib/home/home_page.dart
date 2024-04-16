import 'package:flutter/material.dart';
import 'package:quiz_app/model/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(birList[1].aty),
centerTitle: true,
 ),
  );
  }
}  
