import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

import '../../custom_widgets/appbar/components/components.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: appBarW(
        name: "Register",
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 45, left: 15, right: 15),
          child: Column(
            children: [
              //Number Section
              Row(
                children: [
                  Image.asset(
                    'assets/images/phone-icon.png',
                    scale: 4,
                    fit: BoxFit.scaleDown,
                  ),
                  const SizedBox(width: 9),
                  const CustomText(
                    text: 'Phone Number',
                    fontW: FontWeight.w400,
                    fontSize: 20,
                  ),
                ],
              ),
              const CustomFormField(
                hintText: "please enter yor Phone Number",
                hintTextColor: TColor.grey,
                inputType: TextInputType.phone,
              ),
              const SizedBox(
                height: 10,
              ),
              //verification Code Section
              Row(
                children: [
                  Image.asset(
                    'assets/images/lock-icon.png',
                    scale: 1.4,
                  ),
                  const SizedBox(width: 4),
                  const CustomText(
                    text: 'Verification Code',
                    fontW: FontWeight.w400,
                    fontSize: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {},
                      hintCharacter: '*',
                    ),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                      onPressed: () {},
                      child: const CustomText(
                        text: 'Get Code',
                        fontSize: 20,
                        fontW: FontWeight.bold,
                        color: TColor.iconGary,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Mail Section
              Row(
                children: const [
                  Icon(
                    Icons.mail_sharp,
                    color: TColor.prim,
                    size: 27,
                  ),
                  SizedBox(width: 9),
                  CustomText(
                    text: 'Email',
                    fontW: FontWeight.w400,
                    fontSize: 20,
                  ),
                ],
              ),
              const CustomFormField(
                hintText: "please enter yor Email",
                hintTextColor: TColor.grey,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              //PassWord Section
              Row(
                children: [
                  Image.asset(
                    'assets/images/password.png',
                    scale: 4,
                    fit: BoxFit.scaleDown,
                  ),
                  const SizedBox(width: 9),
                  const CustomText(
                    text: 'Password',
                    fontW: FontWeight.w400,
                    fontSize: 20,
                  ),
                ],
              ),
              const CustomFormField(
                hintText: "please enter yor Password",
                hintTextColor: TColor.grey,
                security: true,
              ),
              const SizedBox(height: 10),
              const CustomText(
                height: true,
                maxLine: 2,
                text:
                    '8-20 digits, At least 1 special characters 1 uppercase letter, with no continuous digits',
              ),
              const SizedBox(
                height: 100,
              ),
              const CustomButton(
                bgColor: TColor.iconGary,
                textColor: Colors.grey,
                text: 'Register',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                width: 300,
                radius: 40,
                borderColor: TColor.iconGary,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(text: 'Aleady have an account?'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
