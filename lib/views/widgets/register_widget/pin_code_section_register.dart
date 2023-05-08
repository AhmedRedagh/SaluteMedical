import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class PinCodeRegisterW extends StatelessWidget {
  const PinCodeRegisterW({super.key, this.btnColor = TColor.iconGary});
  final Color? btnColor;
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
            child: CustomText(
              text: 'Get Code',
              fontSize: 20,
              fontW: FontWeight.bold,
              color: btnColor as Color,
            ))
      ],
    );
  }
}
// CustomButton(
// bgColor: TColor.grey2,
// textColor: TColor.borderContainer,
// onTap: () => {},
// radius: 50,
// borderColor: TColor.grey2,
// text: 'Re-get Code',
// fontSize: 17,
// width: 130,
// ),