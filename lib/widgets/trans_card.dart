import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionCards extends StatelessWidget {
  final String name, amount,subtext, rate, imageData;
  final Color color;
  final IconData iconData;
  const TransactionCards({Key? key, required this.name, required this.amount, required this.subtext, required this.rate, required this.color, required this.iconData, required this.imageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(imageData, height: 35,),
                    const SizedBox(width: 8,),
                     Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '\$$amount',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children:  [
                const SizedBox(width: 45),
                Text(
                  subtext,
                  style: const TextStyle(
                      color: Colors.grey
                  ),
                ),
                const SizedBox(width: 175),
                Icon(iconData, color: color),
                Text(
                  rate,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: color
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
