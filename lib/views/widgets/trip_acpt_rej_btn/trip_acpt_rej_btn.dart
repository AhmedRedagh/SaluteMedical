import 'package:flutter/material.dart';

import 'package:salute_medical/views/custom_widgets/custom_button.dart';

class AccRejBtn extends StatelessWidget {
  const AccRejBtn({super.key, this.color = Colors.blue, this.tap});
  final Function? tap;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      bgColor: color,
      textColor: Colors.white,
      text: 'Done',
      fontWeight: FontWeight.bold,
      fontSize: 22,
      width: 300,
      radius: 40,
      onTap: () => tap,
    );
  }
}
