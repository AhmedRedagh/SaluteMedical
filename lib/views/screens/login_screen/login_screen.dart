import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/login_cubit/login_cubit.dart';
import 'package:salute_medical/bloc/login_cubit/login_states.dart';
import 'package:salute_medical/config/globals_variable.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/helper/cache_helper.dart';
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

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? password;
  String? phoneNumber;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    debugPrint("phone number $phoneNumber and password $password");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                CustomFormField(
                  prefix: const Icon(Icons.phone_android),
                  hintText: "Phone Number ",
                  inputType: TextInputType.number,
                  hintTextColor: TColor.grey,
                  validation: "Please write your phone number",
                  number: 8,
                  onChanged: (value) {
                    phoneNumber = value;
                    if (value == "") {
                      phoneNumber = null;
                    }
                    setState(() {});
                  },
                  saved: (value) {
                    phoneNumber = value;
                  },
                ),
                const Sbox(
                  h: 20,
                ),
                CustomFormField(
                  number: 6,
                  prefix: const Icon(Icons.lock),
                  suffix: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                  hintText: "Passworld ",
                  inputType: TextInputType.visiblePassword,
                  security: true,
                  validation: "Please write your password",
                  hintTextColor: TColor.grey,
                  onChanged: (value) {
                    password = value;
                    if (value == "") {
                      password = null;
                    }
                    setState(() {});
                  },
                  saved: (value) {
                    password = value;
                  },
                ),
                const Sbox(h: 15),
                const ForgotPassworldLogin(),
                const Sbox(h: 50),
                BlocConsumer<LoginCubit, LoginStates>(
                  listener: (context, states) {
                    if (states is LoginSuccessStates) {
                      debugPrint(states.loginModels.toString());
                      loginToken = states.loginModels!.driver!.api_token;
                      CacheHelper.putString(
                        'apiToken',
                        states.loginModels!.driver!.api_token!,
                      );
                      NavigationUsage.navigateTo(context, const LayoutScreen());
                    } else if (states is LoginErrorStates) {
                      debugPrint(states.error);
                    }
                  },
                  builder: (context, states) {
                    if (states is! LoginLoadingStates) {
                      return CustomButton(
                        bgColor: phoneNumber != null && password != null
                            ? Colors.blue
                            : TColor.grey2,
                        textColor: phoneNumber != null && password != null
                            ? TColor.white
                            : Colors.grey,
                        onTap: () {
                          // NavigationUsage.navigateTo(context, const LayoutScreen());
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            context.read<LoginCubit>().login(
                                phone: '+2$phoneNumber', password: password);
                          }
                          setState(() {});
                        },
                        text: 'login',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        width: 300,
                        radius: 40,
                        borderColor: TColor.iconGary,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
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
      ),
    );
  }
}
