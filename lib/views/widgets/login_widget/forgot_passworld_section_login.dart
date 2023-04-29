import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';

class ForgotPassworldLogin extends StatelessWidget {
  const ForgotPassworldLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: (){},
            child: Text(
              'Forgot your passworld?',
              style: TextStyle(
                fontWeight: FontWeight.bold ,
                fontSize: 15 ,
                color: TColor.title,
              ),
            )),
      ],
    );
  }
}
