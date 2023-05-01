import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/screens/layout_screen/layout_screen.dart';
import 'package:salute_medical/views/widgets/login_widget/forgot_passworld_section_login.dart';
import 'package:salute_medical/views/widgets/login_widget/logo_section_login.dart';
import 'package:salute_medical/views/widgets/login_widget/phone_no_login_screen.dart';
import 'package:salute_medical/views/widgets/verify_widget/pin_code_verify_screen.dart';
import 'package:salute_medical/views/widgets/verify_widget/verify_register_screen.dart';
import 'package:salute_medical/views/widgets/verify_widget/verify_section_login.dart';

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
                h: 15,
              ),
              const VerifySectionLoginW(),
              const PinCodeVerify(),
              const Sbox(
                h: 15,
              ),
              const ForgotPassworldLogin(),
              const Sbox(
                h: 20,
              ),
              CustomButton(
                bgColor: TColor.prim,
                textColor: TColor.white,
                onTap: () => {
                NavigationUsage.navigateTo(context,const LayoutScreen())
                },
                radius: 50,
                borderColor: TColor.grey2,
                text: 'Login',
                fontSize: 17,
                width: 310,
              ),
              const RegisterVerifyScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
