import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;

  const SmallText({
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    this.height = 1.2,
    super.key, // Use the super parameter for the key
  });

  @override
  Widget build(BuildContext context) {
    //reusable text widget
    return Text(text,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          height: height,
        ));
  }
}
