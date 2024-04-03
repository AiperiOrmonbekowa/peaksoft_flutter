import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

final players = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          AlaToo(players: players, imageName: 'assets/images/bozuy.png', 
          onTap: () {players.play(AssetSource('notes/mash-botoy.mp3'),);
 },),
          AlaToo(players: players, imageName: 'assets/images/image.jpg', 
          onTap: () {players.play(AssetSource('notes/omur.mp3'),);
        
          },),
        ],
        ),
      ),
    );
  }
}

class AlaToo extends StatelessWidget {
  const AlaToo({
    super.key,
    required this.players, required this.imageName,required this.onTap,
  });
  
  final AudioPlayer players;
  final String imageName;
   final Function () onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap:onTap,
      child: Image.asset(imageName),
      ),
    );
  }
}
