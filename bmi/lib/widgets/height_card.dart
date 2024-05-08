
import 'package:bmi/app_text_style.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
   const HeightCard({
    super.key,
    required this.text,
    required this.widget,
  });
   final String text;
   final Widget widget;

  @override
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 176,
      child: Card(
          shadowColor: Colors.white,
          color:const  Color(0xff0b0120,),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Text(
              "Height".toUpperCase(),
              style:   AppTextStule.textStyle,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                 Text(
                  text,
                  style: AppTextStule.numStyle,
                ),
               const Text(
              "cm",
               style:   AppTextStule.textStyle,
            ),
              ],

             ),
             widget,
          ],
        ),
      ),
    );
  }
}