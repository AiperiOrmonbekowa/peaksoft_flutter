import 'package:flutter/material.dart';
import 'package:food_app_pr/features/presention/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset('assets/images/burger.png'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Text(
              'Кируу',
              style: GoogleFonts.almendra(
                textStyle: const TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
