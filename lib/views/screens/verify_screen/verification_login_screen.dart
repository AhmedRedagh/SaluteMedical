import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_state.dart';
import 'package:salute_medical/config/globals_variable.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/helper/cache_helper.dart';
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
  final String? tokenRegister;
  const VerificationLoginScreen({
    Key? key,
    this.tokenRegister,
  }) : super(key: key);

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
              BlocConsumer(
                listener: (context, states) {
                  if (states is VerificationSuccessStates) {
                    debugPrint(states.verifyModels.toString());
                    token = states.verifyModels!.driver!.api_token;
                    CacheHelper.putString(
                      'apiToken',
                      states.verifyModels!.driver!.api_token!,
                    );
                    NavigationUsage.navigateTo(context, const LayoutScreen());
                  } else if (states is VerificationErrorStates) {
                    debugPrint(states.error);
                  }
                },
                builder: (context, states) {
                  if (states is! VerificationLoadingStates) {
                    return CustomButton(
                      bgColor: TColor.prim,
                      textColor: TColor.white,
                      onTap: () => {},
                      radius: 50,
                      borderColor: TColor.grey2,
                      text: 'Login',
                      fontSize: 17,
                      width: 310,
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              const RegisterVerifyScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
