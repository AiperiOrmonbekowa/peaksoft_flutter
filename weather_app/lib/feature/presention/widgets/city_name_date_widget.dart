import 'package:flutter/material.dart';

class CityNmaeDateWidget extends StatelessWidget {
  const CityNmaeDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
     Align(
     alignment: Alignment.centerLeft,
     child: Text('Bishkek,\nKyrgyzstan', style: TextStyle(color: Color(0xFF313341), fontSize:34, fontWeight: FontWeight.w500 ),
     ),
     ),
     Align(
     alignment: Alignment.centerLeft,
     child: Text('Tue, Jun 30', style: TextStyle(color: Color(0xFF313341), fontSize:19, fontWeight: FontWeight.w400),
     ),
    ),
    ],
    );
  }
}
