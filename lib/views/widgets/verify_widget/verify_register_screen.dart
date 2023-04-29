import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class RegisterVerifyScreen extends StatelessWidget {
  const RegisterVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: 'Have no account yet?'),
        TextButton(
          onPressed: () {},
          child: const CustomText(text: 'Register'),
        )
      ],
    );
  }
}
