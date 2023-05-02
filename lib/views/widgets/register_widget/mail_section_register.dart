import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

import '../../../config/theme_colors.dart';

class MailSectionRegisterW extends StatelessWidget {
  const MailSectionRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.mail_sharp,
          color: TColor.prim,
          size: 27,
        ),
        SizedBox(width: 9),
        CustomText(
          text: 'Email',
          fontW: FontWeight.w400,
          fontSize: 20,
        ),
      ],
    );
  }
}
