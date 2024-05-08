
import 'package:bmi/app_text_style.dart';
import 'package:flutter/material.dart';

class WeigthAndHeightCard extends StatelessWidget {
  const WeigthAndHeightCard({
    super.key,
    required this.nameOfFirst,
    required this.nameOfSecond,
    required this.onChanged,
    required this.onChangeded,
  });
  final String nameOfFirst;
  final String nameOfSecond;
  final void Function()? onChanged;
  final void Function()? onChangeded;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        shadowColor: Colors.white,
        color: const Color(
          0xff0b0120,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              nameOfFirst.toUpperCase(),
              style: AppTextStule.textStyle,
            ),
            Text(
              nameOfSecond,
              style: AppTextStule.numStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: onChanged,
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: onChangeded,
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}