import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardIcons extends StatelessWidget {
  final String imageUrl, title;
   final Color bgcolor, imageColor;
  final double size;
  const cardIcons({Key? key,
  required this.imageUrl, required this.title, required this.bgcolor, required this.imageColor, required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: bgcolor
          ),
          padding: const EdgeInsets.all(2),
          child: Image.asset(imageUrl, color: imageColor, width: size,),
        ),
        const SizedBox(width: 3),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],

    );
  }
}
