import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   late ConfettiController _controllerCenter;
   void dice (){
   setState(() {
         int left =  Random().nextInt(7);
    int right = Random().nextInt(7);
    if(left == 5 || right == 2){
         _controllerCenter.play();}
      });
    
   }
  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

   @override
  void dispose() {
     // dispose the controller
    _controllerCenter.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int left =  random.nextInt(6) + 1;
    int right = random.nextInt(6) + 1;
    
    //Random bir class => dart:math ichinde bolot
    //random => exzempliary
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Align(
                 alignment: Alignment.center,
                child: ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirection: pi / 2,
                  maxBlastForce: 5,
                  minBlastForce: 1,
                  emissionFrequency: 0.03,
                  numberOfParticles: 10,
                  gravity: 0, 
                child: InkWell(
                    onTap: () {
                      setState(() {
                    dice();
                      });
                    },
                    child: Image.asset('assets/images/dice$left.png'),
                  ),
                ),),
                ),
                const SizedBox(width: 15,),
                   Expanded(child: Align(
                     alignment: Alignment.center,
                child: ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirection: pi / 2,
                  maxBlastForce: 5,
                  minBlastForce: 1,
                  emissionFrequency: 0.03,
                  numberOfParticles: 10,
                  gravity: 0, 
                     child: InkWell(
                      onTap: (){
                        setState(() {
                         dice();
                        });
                      },
                      child: Image.asset('assets/images/dice$right.png'),
                      ),
                   ),),
                   ),
              ],
            ),
          )
      ],
      ),
    );
  }
}