import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/login_screen/login_screen.dart';
import 'package:salute_medical/views/screens/verify_screen/verification_login_screen.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';
import 'package:salute_medical/views/widgets/register_widget/mail_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/password_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/phone_section_register_w.dart';
import 'package:salute_medical/views/widgets/register_widget/verify_section_register.dart';
import '../../widgets/register_widget/pin_code_section_register.dart';
import '../../widgets/register_widget/sign_in_section_register_w.dart';

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
              const PhoneSectionRegisterW(),
              const CustomFormField(
                hintText: "please enter yor Phone Number",
                hintTextColor: TColor.grey,
                inputType: TextInputType.phone,
              ),
              const Sbox(
                h: 10,
              ),
              //verification Code Section
              const VerifySectionRegisterW(),
              const PinCodeRegisterW(),
              const Sbox(
                h: 10,
              ),
              //Mail Section
              const MailSectionRegisterW(),
              const CustomFormField(
                hintText: "please enter yor Email",
                hintTextColor: TColor.grey,
                inputType: TextInputType.emailAddress,
              ),
              const Sbox(
                h: 10,
              ),
              //PassWord Section
              const PassWordSectionRegisterW(),
              const CustomFormField(
                hintText: "please enter yor Password",
                hintTextColor: TColor.grey,
                security: true,
              ),
              const Sbox(h: 10),
              const CustomText(
                height: true,
                maxLine: 2,
                text:
                    '8-20 digits, At least 1 special characters 1 uppercase letter, with no continuous digits',
              ),
              const Sbox(
                h: 50,
              ),
              //RegisterButton
              CustomButton(
                onTap: () {
                  NavigationUsage.navigateTo(
                      context, const VerificationLoginScreen());
                },
                bgColor: TColor.grey2,
                textColor: Colors.grey,
                text: 'Register',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                width: 300,
                radius: 40,
                borderColor: TColor.iconGary,
              ),
              const Sbox(
                h: 30,
              ),
              SignInRegisterW(
                name: "Login",
                onTap: () {
                  NavigationUsage.navigateTo(context, const LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
