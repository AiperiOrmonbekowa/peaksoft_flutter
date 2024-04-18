
import 'package:flutter/material.dart';
import 'package:flutter_application_00/model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.item});
  final Person item;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:  Text(item.name),
      ),
     
    );
  }
}