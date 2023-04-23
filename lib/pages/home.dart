import 'package:ficoin_cryptocurrency_app/pages/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/balance_card.dart';
import '../widgets/buttons.dart';
import '../widgets/chip.dart';
import '../widgets/trans_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(CupertinoIcons.square_grid_2x2_fill,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    CupertinoIcons.app_badge_fill,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
              const SizedBox(height: 19,),
             Container(
               height: 200,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: const [
                   BalanceCards(balance: '1,228', bgColor: CupertinoColors.activeBlue, txtColor: CupertinoColors.white, imgColor: CupertinoColors.white,),
                   SizedBox(width: 17,),
                   BalanceCards(balance: '1,500', bgColor: CupertinoColors.activeOrange, txtColor: CupertinoColors.white, imgColor: CupertinoColors.white,)
                 ],
               ),
             ),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'For You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Buttons(textColor: Colors.white, bgColor: CupertinoColors.activeBlue, iconColor: Colors.white, text: 'Learn Crypto', subText: 'Earn Crypto.', icon: CupertinoIcons.book_solid),
                  Buttons(textColor: Colors.black, bgColor: Colors.grey[300]!, iconColor: CupertinoColors.activeBlue, text: 'DCA', subText: 'Simulation', icon: CupertinoIcons.calendar_today),
                  Buttons(textColor: Colors.black, bgColor: Colors.grey[300]!, iconColor: CupertinoColors.activeBlue, text: 'Join', subText: 'Community', icon: CupertinoIcons.location_fill),
                ],
              ),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    'My Portfolio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.black,
                    ),
                  ),
                 TextButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Portfolio()),
                       );
                     },
                     child: const Text(
                       'See All',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 14,
                         color: CupertinoColors.activeBlue,
                       ),
                     ),
                 ),

                ],
              ),
              const SizedBox(height: 8),
              Row(
                children:  [
                  MyChip(txtColor: CupertinoColors.white, name: 'Profit', bgColor: CupertinoColors.activeBlue,),
                  const SizedBox(width: 12),
                  MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name:'Loss'),
                  const SizedBox(width: 12),
                  MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: '24H')
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 211,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    SizedBox(height: 8,),
                    TransactionCards(name: 'Bitcoin', amount: '59,601.00', subtext: 'BTC/USD', rate: '0.9%', color: Colors.green, iconData: Icons.arrow_drop_up, imageData: 'assets/my_icons/bitcoin_icon.png'),
                    SizedBox(height: 8,),
                    TransactionCards(name: 'Ethereum', amount: '4,406.52', subtext: 'ETH/USD', rate: '2.1%', color: Colors.red, iconData: Icons.arrow_drop_down, imageData: 'assets/my_icons/ethereum_icon.png'),
                    SizedBox(height: 8,),
                    TransactionCards(name: 'Solana', amount: '1,406.38', subtext: 'SOL/USD', rate: '1.5%', color: Colors.red, iconData: Icons.arrow_drop_down, imageData: 'assets/my_icons/solana_icon.jpg')

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

