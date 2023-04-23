
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home.dart';
import 'my_wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  final List _listPages = [const Home(), const MyWallet()];
  late Widget _currentPage;

  @override  void initState() {
    super.initState();
  _currentPage = const Home();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: CupertinoColors.activeBlue,
        unselectedItemColor: Colors.blue.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (selectedIndex) => _changePage(selectedIndex),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar_alt_fill),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.equal_square_fill),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: ''
          ),
        ],
      ),
    );
  }
}
