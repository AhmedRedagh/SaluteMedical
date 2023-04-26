import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

import '../../../config/theme_colors.dart';

class PinCodeRegisterW extends StatelessWidget {
  const PinCodeRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (value) {},
            hintCharacter: '*',
          ),
        ),
        const SizedBox(width: 50),
        TextButton(
            onPressed: () {},
            child: const CustomText(
              text: 'Get Code',
              fontSize: 20,
              fontW: FontWeight.bold,
              color: TColor.iconGary,
            ))
      ],
    );
  }
}
