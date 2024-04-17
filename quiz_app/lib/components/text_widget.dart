import 'package:flutter/material.dart';

class TextWisfet extends StatelessWidget {
  const TextWisfet({
   required this.text});

 final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 22),);
  }
}  