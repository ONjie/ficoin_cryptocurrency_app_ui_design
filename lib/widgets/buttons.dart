import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final IconData icon;
  final Color textColor;
  final Color bgColor;
  final Color iconColor;
  final String text, subText;

  const Buttons({Key? key,  required this.textColor, required this.bgColor, required this.iconColor, required this.text, required this.subText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Icon(icon, color: iconColor,),
          const SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: textColor,
            ),
          ),
          Text(
            subText,
            style: TextStyle(
              fontSize: 15,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
