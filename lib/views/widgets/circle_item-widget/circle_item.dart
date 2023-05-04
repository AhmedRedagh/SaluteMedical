import 'package:flutter/material.dart';

import '../../custom_widgets/components/custom_circle_avatar.dart';

class BorderedCircle extends StatelessWidget {
  const BorderedCircle({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey,
      child: NumberCircleItem(
        color: color,
        innerRadius: 15,
        outerColor: Colors.white,
        outerRadius: 20,
      ),
    );
  }
}
