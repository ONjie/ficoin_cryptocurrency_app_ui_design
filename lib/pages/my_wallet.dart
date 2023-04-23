import'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/chip.dart';
import '../widgets/my_wallet_trans_cards.dart';


class MyWallet extends StatelessWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Value',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$2,325',
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(CupertinoIcons.eye_slash_fill,)
                  ],
                ),
                const SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '24H change',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '\$120.00 (0.5%)',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: CupertinoColors.activeGreen
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total Profit/Loss',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '\$302.00 (1.3%)',
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                          color: CupertinoColors.activeGreen
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text(
                  'My Portfolio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: CupertinoColors.black,
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children:  [
                    MyChip(txtColor: CupertinoColors.white, name: 'Profit', bgColor: CupertinoColors.activeBlue,),
                    const SizedBox(width: 12),
                   MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name:'Loss'),
                    const SizedBox(width: 12),
                  MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: '24H')
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 451,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      SizedBox(height: 9,),
                      WalletCards(name: 'Bitcoin', amount: 'BTC 0.01123', subtext: 'BTC/USD', rate: '\$669.53', color: Colors.green, imageData: 'assets/my_icons/bitcoin_icon.png'),
                      SizedBox(height: 8,),
                      WalletCards(name: 'Ethereum', amount: 'ETH 0,14', subtext: 'ETH/USD', rate: '\$623.2', color: Colors.green, imageData: 'assets/my_icons/ethereum_icon.png'),
                      SizedBox(height: 8,),
                      WalletCards(name: 'Solana', amount: 'SOL 2,68', subtext: 'SOL/USD', rate: '\$568.62', color: Colors.red, imageData: 'assets/my_icons/solana_icon.jpg'),
                      SizedBox(height: 8,),
                      WalletCards(name: 'Cardano', amount: 'ADA 76.10', subtext: 'ADA/USD', rate: '\$142.42', color: Colors.red, imageData: 'assets/my_icons/cardano_icon.png'),
                      SizedBox(height: 8,),
                      WalletCards(name: 'Hive', amount: 'HIVE 11.4832', subtext: 'HIVE/USD', rate: '\$24.32', color: Colors.green, imageData: 'assets/my_icons/hive_icon.png'),
                      SizedBox(height: 8,),
                      WalletCards(name: 'Bitcoin', amount: 'BTC 0.01123', subtext: 'BTC/USD', rate: '\$669.53', color: Colors.green, imageData: 'assets/my_icons/bitcoin_icon.png'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

