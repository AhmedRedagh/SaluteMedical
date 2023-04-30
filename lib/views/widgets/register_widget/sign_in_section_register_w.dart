import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SignInRegisterW extends StatelessWidget {
  final String? name;
  final String? caption ;
  final Function? onTap;
  const SignInRegisterW({super.key, this.name , this.caption , this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         CustomText(text: caption),
        TextButton(
          onPressed: (){
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
