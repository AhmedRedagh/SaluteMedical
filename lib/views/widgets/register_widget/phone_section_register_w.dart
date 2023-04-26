import 'package:flutter/material.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class PhoneSectionRegisterW extends StatelessWidget {
  const PhoneSectionRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/phone-icon.png',
          scale: 4,
          fit: BoxFit.scaleDown,
        ),
        const Sbox(w: 9),
        const CustomText(
          text: 'Phone Number',
          fontW: FontWeight.w400,
          fontSize: 20,
        ),
      ],
    );
  }
}
