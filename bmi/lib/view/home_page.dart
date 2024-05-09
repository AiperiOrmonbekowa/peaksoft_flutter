import 'package:bmi/widgets/buttom_bar.dart';
import 'package:bmi/widgets/height_card.dart';
import 'package:bmi/widgets/male_female_card.dart';
import 'package:bmi/widgets/weith_and_height_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = 100;
    int weight = 60;
    int age = 28;
    bool isTrue = false;
    void all() {
      setState(() {
        isTrue = !isTrue;
      });
    }
    return Scaffold(  
      appBar: myAppBar(), 
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemlalwCard(
                  icon: Icons.male,
                  name: "male",
                  color: isTrue ? Colors.blue : Colors.white,
                  onTap: () {
                    all();
                  },
                ),
                MaleFemlalwCard(
                  icon: Icons.female,
                  name: "female",
                  color: isTrue ? Colors.white : Colors.blue,
                  onTap: () {
                    all();
                  },
                ),
              ],
            ),
            HeightCard(
              text: height.toString(),
              widget: Slider(
                thumbColor: Colors.green,
                activeColor: Colors.blue,
                inactiveColor: Colors.orange,
                min: 0,
                max: 200,
                value: height, //here I need to write widget
                onChanged: (value) {
                  setState(
                    () {
                      height = value;
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeigthAndHeightCard(
                  nameOfFirst: "weight",
                  nameOfSecond: weight.toString(),
                  onChanged: () =>
                    setState(() {
                      weight--;
                    }),
                  
                  onChangeded: () => setState(
                    () {
                      weight++;
                    },
                  ),
                ),
                WeigthAndHeightCard(
                  nameOfFirst: "age",
                  nameOfSecond: age.toString(),
                  onChanged: () {
                    setState(() {
                      age--;
                    });
                  },
                  onChangeded: () => setState(
                    () {
                      age++;
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtomBar(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "BMI CALCULATOR",
        style: TextStyle(
          color: Color(
            0xffFFFFFF,
          ),
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
