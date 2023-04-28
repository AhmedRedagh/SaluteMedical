import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/widgets/login_widget/pin_code_login_screen.dart';

import '../../widgets/login_widget/verify_section_login.dart';

class VerificationLoginScreen extends StatelessWidget {
  const VerificationLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // logo
              Container(
                height: 200,
                margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.contain)),
              ),
              const Sbox(
                h: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Phone No.",
                          style: TextStyle(
                            color: TColor.prim,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Sbox(
                          h: 15,
                        ),
                        Container(
                          width: 60,
                          height: 2,
                          color: TColor.prim,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Sbox(
                h: 15,
              ),
              const CustomFormField(
                prefix: Icon(Icons.phone_android),
                hintText: "Phone Number ",
                inputType: TextInputType.number,
                hintTextColor: TColor.grey,
              ),
              const Sbox(
                h: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: VerifySectionLoginW(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: PinCodeLoginW(),
              ),
              const Sbox(
                h: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your passworld?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: TColor.title,
                        ),
                      )),
                ],
              ),
              const Sbox(
                h: 20,
              ),
              CustomButton(
                bgColor: TColor.grey2,
                textColor: TColor.borderContainer,
                onTap: () => {},
                radius: 50,
                borderColor: TColor.grey2,
                text: 'Login',
                fontSize: 17,
                width: 310,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have no account yet?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Register'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
