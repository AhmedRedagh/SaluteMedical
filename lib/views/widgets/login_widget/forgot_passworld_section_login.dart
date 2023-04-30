import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/screens/modify_passworld_screen/modify_passworld_screen.dart';

class ForgotPassworldLogin extends StatelessWidget {
  const ForgotPassworldLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              NavigationUsage.navigateTo(context, ModifyPassworld());
            },
            child: const Text(
              'Forgot your passworld?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: TColor.title,
              ),
            )),
      ],
    );
  }
}
