import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff7E5126),
      appBar: AppBar(
             backgroundColor: const Color(0xff7E5126),
        title:  Text('My App', style: GoogleFonts.almendra(textStyle: const TextStyle(fontSize: 27)),),
        centerTitle: true,
      ),
    );
  }
}