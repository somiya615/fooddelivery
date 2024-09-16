import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({
    required this.icon,
    required this.text,
    required this.iconColor,
    super.key, // Use the super parameter for the key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //reusable row widget
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
