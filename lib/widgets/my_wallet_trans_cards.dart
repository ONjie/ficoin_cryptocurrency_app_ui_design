import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WalletCards extends StatelessWidget {
  final String name, amount,subtext, rate, imageData;
  final Color color;

  const WalletCards({Key? key, required this.name, required this.amount, required this.subtext, required this.rate, required this.imageData, required this.color}) : super(key: key);

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
                      amount,
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
                const SizedBox(width: 178),
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
