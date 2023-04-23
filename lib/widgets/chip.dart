import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
 final String name;
  final Color txtColor, bgColor;
  const MyChip({Key? key, required this.txtColor, required this.bgColor, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        padding: const EdgeInsets.all(5),
        backgroundColor: bgColor,
        label: Text(
          name,
          style: TextStyle(
            fontSize: 17,
            color: txtColor,
          ),
        ),
      );

  }
}
