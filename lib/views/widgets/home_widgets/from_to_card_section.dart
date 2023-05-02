import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class FromToSection extends StatelessWidget {
  const FromToSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomText(
            text: 'From ',
            overflow: TextOverflow.ellipsis,
            fontSize: 20,
            color: Colors.grey,
            maxLine: 1,
          ),
        ),
        Expanded(
          child: CustomText(
            text: 'To ',
            overflow: TextOverflow.ellipsis,
            fontSize: 20,
            color: Colors.grey,
            maxLine: 1,
          ),
        ),
      ],
    );
  }
}
