import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage
 extends StatelessWidget {
  const HomePage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E5126),
      
      appBar: AppBar(
        title: Text(
          'Food App',
          style: GoogleFonts.almendra(
            textStyle: const TextStyle(
              fontSize: 27,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF7E5126),
        centerTitle: true,
        shadowColor: const Color(0xFF000000),
        elevation: 1,
      ),
    body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return  Card(
          
          color: const Color(0xffffffff),
          child: ListTile(
            
            title: Row(
              children: [
                Image.asset('assets/images/burger_1.png'),
                const Text('Burger'),
              ],
            ),


          ),
        );
      }),
    );
  }
}