import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/chip.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 16, top: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:  [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                        },
                      icon:  const Icon(CupertinoIcons.left_chevron,),
                    ),
                    const SizedBox(width: 90,),
                    const Text(
                        'My Portfolio',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyChip(txtColor: CupertinoColors.white, name: 'BTC', bgColor: CupertinoColors.activeBlue,),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name:'ETH'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: 'SOL'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: 'ADA'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: 'HIVE'),
                  ],
                ),
                const SizedBox(height: 9,),
                Image.asset('assets/my_icons/bitcoin_icon.png', width: 25,),
                const SizedBox(height: 9,),
                const Text(
                    'Wallet Balance',
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,

                ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        const Text('')
                      ],
                    ),
                    Column(
                      children: const [
                           Text(''),
                        Text(
                            '669,53',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 33,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(''),
                          ],
                        ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            '0,00112342 BTC',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                            '(1.3%)',
                          style: TextStyle(
                              color: CupertinoColors.activeGreen,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                      ],
                    ),
                const SizedBox(height: 11,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name:'1h'),
                    MyChip(txtColor: CupertinoColors.white, name: '24h', bgColor: CupertinoColors.activeBlue,),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name:'7D'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: '1M'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: '3M'),
                    MyChip(txtColor: CupertinoColors.black, bgColor: Colors.grey[300]!, name: '1Y'),
                  ],
                ),
                const SizedBox(height: 9,),
                Image.asset('assets/my_icons/download.jpg',
                    height: 250,
                    width: 360,
                    fit:BoxFit.cover
                ),
                //const SizedBox(height: 11,),
                const Text(
                  'History',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: CupertinoColors.black
                ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade500),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                          ),
                            child: Image.asset('assets/my_icons/left.png', width: 33,)
                        )
                        ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                            'Bitcoin',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '\$20.27',
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('0,0342 BTC')
                          ],
                        )

                      ],
                    ),
                    const SizedBox(width: 130,),
                    Chip(
                      backgroundColor: Colors.green.shade100,
                        label: const Text(
                            'Buy',
                        style: TextStyle(
                          color: CupertinoColors.activeGreen,
                        ),
                        ),
                    )
                  ],
                ),
                const SizedBox(height: 11,),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade500),
                                borderRadius: const BorderRadius.all(Radius.circular(5))
                            ),
                            child: Image.asset('assets/my_icons/up.png', width: 33, color: CupertinoColors.black,)
                        )
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          'Bitcoin',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '\$10',
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('0,0018463 BTC')
                          ],
                        )

                      ],
                    ),
                    const SizedBox(width: 130,),
                    Chip(
                      backgroundColor: Colors.red.shade100,
                      label: const Text(
                        'Sold',
                        style: TextStyle(
                          color: CupertinoColors.destructiveRed,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: CupertinoColors.activeBlue),
                        color: CupertinoColors.activeBlue
                      ),
                      padding: const EdgeInsets.all(16),
                      width: 150,
                      child: const Center(
                        child: Text(
                            'Buy',
                        style: TextStyle(
                          fontSize: 18,
                          color: CupertinoColors.white
                        ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: const Color.fromRGBO(32, 42, 68, 1)),
                          color: const Color.fromRGBO(32, 42, 68, 1)
                      ),
                      padding: const EdgeInsets.all(16),
                      width: 150,
                      child: const Center(
                        child: Text(
                          'Sell',
                          style: TextStyle(
                              fontSize: 18,
                              color: CupertinoColors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                  ],
                ),
            ),
          )
    );
  }
}
