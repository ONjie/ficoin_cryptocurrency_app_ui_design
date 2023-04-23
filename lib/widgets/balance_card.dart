import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'card_icons.dart';

class BalanceCards extends StatelessWidget {
  final String balance;
   final Color bgColor, txtColor, imgColor;
  const BalanceCards({Key? key, required this.balance, required this.bgColor, required this.txtColor, required this.imgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: bgColor),
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(16))
        ),
        width: 355,
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Wallet',
              style: TextStyle(
                fontSize: 15,
                color: txtColor,
              ),
            ),
            const SizedBox(height: 9,),
            const Text(
              'Balance',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              '\$$balance',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 34,
                color: txtColor,
              ),
            ),
            const SizedBox(height: 7,),
            Text(
              '/USD',
              style: TextStyle(
                fontSize: 15,
                color: txtColor,
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                cardIcons(imageUrl: 'assets/my_icons/wallet_sec.png', title: 'Deposit', bgcolor: bgColor, imageColor: imgColor, size: 35,),
                cardIcons(imageUrl: 'assets/my_icons/wallet.png', title: 'Withdraw', bgcolor: bgColor, imageColor: imgColor, size: 35,),
                cardIcons(imageUrl: 'assets/my_icons/dots.png', title: 'More', bgcolor: imgColor, imageColor: bgColor, size: 25,),
              ],
            ),
          ],
        ),
    );
  }
}
