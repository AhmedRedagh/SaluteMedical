import 'package:flutter/material.dart';

import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class NumberCircleItem extends StatelessWidget {
  const NumberCircleItem({super.key, this.number, this.color = Colors.white});
  final int? number;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        backgroundColor: color,
        child: CustomText(text: number.toString(), fontW: FontWeight.bold),
      ),
    );
  }
}
