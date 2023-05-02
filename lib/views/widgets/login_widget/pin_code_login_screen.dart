import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../config/theme_colors.dart';
import '../../custom_widgets/custom_button.dart';

class PinCodeLoginW extends StatelessWidget {
  const PinCodeLoginW({super.key});

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
        CustomButton(
          bgColor: TColor.grey2,
          textColor: TColor.borderContainer,
          onTap: () => {},
          radius: 50,
          borderColor: TColor.grey2,
          text: 'Re-get Code',
          fontSize: 17,
          width: 130,
        ),
      ],
    );
  }
}
