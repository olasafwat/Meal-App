import 'package:flutter/material.dart';

import '../contants.dart';
import 'customText.dart';

class RowCustom extends StatelessWidget {
  final Color colorCircleAvatar;
  final IconData icon;
  final String numText;
  final String text;
  const RowCustom({
    super.key,
    required this.colorCircleAvatar,
    required this.icon,
    required this.numText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //icon price
        CircleAvatar(
          radius: 15,
          backgroundColor: colorCircleAvatar,

          child: Icon(icon, color: Colors.white, size: 20),
        ),
        // num, text
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //num
              CustomText(
                title: numText,
                color: blackColor,
                fontSize: fontSize15,
              ),

              //text
              CustomText(title: text, color: greyColor, fontSize: fontSize12),
            ],
          ),
        ),
      ],
    );
  }
}
