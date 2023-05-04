import 'package:flutter/material.dart';

import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class NumberCircleItem extends StatelessWidget {
  const NumberCircleItem(
      {super.key,
      this.number,
      this.color = Colors.white,
      this.innerRadius = 21,
      this.outerColor = Colors.white,
      this.outerRadius});
  final int? number;
  final Color? color;
  final double? innerRadius;
  final Color? outerColor;
  final double? outerRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outerRadius,
      backgroundColor: outerColor,
      child: CircleAvatar(
        backgroundColor: color,
        radius: innerRadius,
        child: CustomText(
            text: number != null ? number.toString() : '',
            fontW: FontWeight.bold),
      ),
    );
  }
}
