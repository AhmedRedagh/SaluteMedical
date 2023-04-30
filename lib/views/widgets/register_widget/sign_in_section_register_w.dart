import 'package:flutter/material.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SignInRegisterW extends StatelessWidget {
  final String? name;
  final Function()? onTap;
  const SignInRegisterW({super.key, this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: 'Aleady have an account?'),
        const Sbox(
          w: 5,
        ),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: CustomText(
            text: name,
            color: Colors.blue,
            underline: true,
          ),
        )
      ],
    );
  }
}
