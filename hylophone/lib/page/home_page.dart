import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

 final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(title: const Text('Hylophone'),
centerTitle: true,
    backgroundColor: Colors.black45,
    ),
    body:  Column(children: [
     PianoKey(svet: Colors.orange, aty: "do", onTap: () {  
       },),
     PianoKey(svet: Colors.red, aty:'re', onTap: () {   player.play(AssetSource('notes/nota1.mp3'),
       );},),
     PianoKey(svet: Colors.green, aty: 'mi', onTap: () { player.play(AssetSource('notes/nota1.mp3'),
       );  },),
      PianoKey(svet: Colors.yellow, aty: 'fa', onTap: () {  player.play(AssetSource('notes/nota1.mp3'),
       ); },),
       ],
    ),
    );
  }
}

// final const бoюнча кайталоо 

class PianoKey extends StatelessWidget {
  const PianoKey({
    super.key, required this.svet, required this.aty, required this.onTap, 
  });
  final Color svet;
  final String  aty;
  final void Function() onTap; 
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
         width:  MediaQuery.of(context).size.width,
         height: 100,
         color: svet,
         child: Center(child: Text(aty)),
        ),
        );
  }
}

// PianoKeys(color: Colors.red,note:'nota1',),
      //  PianoKeys(color: Colors.green,note:'nota2',),
      //  PianoKeys(color: Colors.pink,note:'nota3',),
      //  PianoKeys(color: Colors.blue,note:'nota4',),
      //  PianoKeys(color: Colors.orange,note:'nota5',),
      //  PianoKeys(color: Colors.pink,note: 'nota6',),
      //  PianoKeys(color: Colors.yellow,note: 'nota7',), 


