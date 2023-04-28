import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/appbar/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/screens/login_screen/verification_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                hintText: "Phone Numper ",
                inputType: TextInputType.number,
                hintTextColor: TColor.grey,
              ),
              const Sbox(
                h: 20,
              ),
              const CustomFormField(
                prefix: Icon(Icons.lock),
                suffix: Icon(Icons.remove_red_eye),
                hintText: "Passworld ",
                inputType: TextInputType.visiblePassword,
                security: true,
                hintTextColor: TColor.grey,
              ),
              const Sbox(
                h: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: TColor.title,
                        ),
                      )),
                ],
              ),
              const Sbox(
                h: 70,
              ),
              CustomButton(
                bgColor: TColor.grey2,
                textColor: TColor.borderContainer,
                onTap: () => {
                  NavigationUsage.navigateTo(
                      context, const VerificationLoginScreen())
                },
                radius: 50,
                borderColor: TColor.grey2,
                text: 'Login',
                fontSize: 17,
                width: 310,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
