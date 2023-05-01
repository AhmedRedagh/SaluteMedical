import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/screens/RegisterScreen/register_screen.dart';
import 'package:salute_medical/views/screens/layout_screen/layout_screen.dart';
import 'package:salute_medical/views/widgets/login_widget/forgot_passworld_section_login.dart';
import 'package:salute_medical/views/widgets/login_widget/logo_section_login.dart';
import 'package:salute_medical/views/widgets/login_widget/phone_no_login_screen.dart';
import 'package:salute_medical/views/widgets/register_widget/sign_in_section_register_w.dart';

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
              const LogoSectionLogin(),
              const Sbox(
                h: 15,
              ),
              const PhoneNoLogin(),
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
                h: 20,
              ),
               CustomFormField(
                prefix: Icon(Icons.lock),
                suffix: IconButton(icon: Icon(Icons.remove_red_eye),
                  onPressed: (){
                  },
                ),
                hintText: "Passworld ",
                inputType: TextInputType.visiblePassword,
                security: true,
                hintTextColor: TColor.grey,
              ),
              const Sbox(h: 15),
              const ForgotPassworldLogin(),
              const Sbox(h: 50),
              CustomButton(
                bgColor: TColor.grey2,
                textColor: TColor.grey,
                onTap: () {
                  NavigationUsage.navigateTo(context,const LayoutScreen());
                },
                text: 'login',
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
                name: 'Register',
                caption: 'Have no account yet?',
                onTap: () {
                  NavigationUsage.navigateTo(context, const RegisterScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
