import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class PassWordSectionRegisterW extends StatelessWidget {
  const PassWordSectionRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/password.png',
          scale: 4,
        ),
        const SizedBox(width: 4),
        const CustomText(
          text: 'Password',
          fontW: FontWeight.w400,
          fontSize: 20,
        ),
      ],
    );
  }
}
