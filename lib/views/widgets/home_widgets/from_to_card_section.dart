import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class FromToSection extends StatelessWidget {
  const FromToSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomText(
            text: 'From ',
            overflow: TextOverflow.ellipsis,
            color: Colors.grey.shade600,
            fontW: FontWeight.bold,
            fontSize: 18,
            maxLine: 1,
          ),
        ),
        Expanded(
          child: CustomText(
            text: 'To ',
            overflow: TextOverflow.ellipsis,
            color: Colors.grey.shade600,
            fontW: FontWeight.bold,
            fontSize: 18,
            maxLine: 1,
          ),
        ),
      ],
    );
  }
}
