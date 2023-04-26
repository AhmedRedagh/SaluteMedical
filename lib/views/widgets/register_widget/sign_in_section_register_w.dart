import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SignInRegisterW extends StatelessWidget {
  const SignInRegisterW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: 'Aleady have an account?'),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
