import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key, required this.email, required this.password});
  final String email;
  final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     leading: InkWell(
      onTap: ()=> Navigator.pop(context),
      child: const Icon(Icons.logout)),
      ),
      body:Column(children: [
        Text(email),
        Text(password),
      ],
      ),
    );
  }
}