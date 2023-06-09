import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class VerifySectionRegisterW extends StatelessWidget {
  const VerifySectionRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/lock-icon.png',
          scale: 1.4,
        ),
        const SizedBox(width: 4),
        const CustomText(
          text: 'Verification Code',
          fontW: FontWeight.w400,
          fontSize: 20,
        ),
      ],
    );
  }
}
