import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SignInRegisterW extends StatelessWidget {
  final String? name;
  final Function()? onTap;

  final String? caption;

  const SignInRegisterW({super.key, this.name, this.caption, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text: caption),
        TextButton(
          onPressed: () {
            onTap!();
          },
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
