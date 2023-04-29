import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SignInRegisterW extends StatelessWidget {
  final String? name;
  const SignInRegisterW({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: 'Aleady have an account?'),
        TextButton(
          onPressed: () {},
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
