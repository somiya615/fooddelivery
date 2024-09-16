import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/big_text.dart';
import 'package:fooddelivery/widgets/icon_and_text_widget.dart';
import 'package:fooddelivery/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        //comments section
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(Icons.star,
                        color: AppColors.mainColor, size: 15))),
            SizedBox(width: 10),
            SmallText(text: '4.5'),
            SizedBox(width: 10),
            SmallText(text: '1200'),
            SizedBox(width: 10),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.height20),
        //time and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
