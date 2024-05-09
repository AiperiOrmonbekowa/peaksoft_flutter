
import 'package:bmi/app_text_style.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatelessWidget {
  const ButtomBar({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
      return InkWell(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return Card(                   
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 70),
              color: const Color(0xff0b0120),
              child: Column(               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 5), // Decreased spacing between IconButton and Text
                      Text(
                        "helth --> B M I".toUpperCase(),
                        style: AppTextStule.textStyle,
                      ),
                    ],
                  ),
                  const Text(
                    "Result",
                    style: AppTextStule.numStyle,
                  ),
                  SizedBox(
                    width: 400,
                    height: 500,
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30), // Increased vertical margin
                        color: Colors.black12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Colors.white),
                        ),
                        child:const  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "everythin okey",
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 255, 19),
                                fontSize:28,
                              ),
                            ),
                            Text(
                              "24.2",
                              style: AppTextStule.numStyle,
                            ),
                            Text(
                              "with your health good:\n You're doing a really good job, keep going",
                              style: AppTextStule.textStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "repeat",
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        height: 70,
        color: Colors.red,
        child: const Center(
          child: Text("Calculate", style: AppTextStule.heightStyle),
        ),
      ),
    );
  }
}
