import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/register_cubit/register_cubit.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';
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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  Color txtBtnColor = TColor.iconGary;
  String? email, phone, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: appBarW(
        name: "Register",
        context: context,
      ),
      body: BlocBuilder<RegisterCubit, RegisterStates>(
        builder: (context, state) => SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 45, left: 15, right: 15),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  //Number Section
                  const PhoneSectionRegisterW(),
                  CustomFormField(
                    hintText: "please enter yor Phone Number",
                    hintTextColor: TColor.grey,
                    validation: 'Please write your phone number correctly',
                    inputType: TextInputType.phone,
                    number: 9,
                    onChanged: (value) {
                      if (formKey.currentState!.validate()) {
                        txtBtnColor = Colors.blue;
                        setState(() {});
                      } else {
                        txtBtnColor = TColor.iconGary;
                        setState(() {});
                      }
                    },
                    saved: (value) {
                      if (formKey.currentState!.validate()) {
                        phone = value;
                      }
                    },
                  ),
                  const Sbox(
                    h: 10,
                  ),
                  //verification Code Section
                  const VerifySectionRegisterW(),
                  PinCodeRegisterW(btnColor: txtBtnColor),
                  const Sbox(
                    h: 10,
                  ),
                  //Mail Section
                  const MailSectionRegisterW(),
                  CustomFormField(
                    hintText: "please enter yor Email",
                    hintTextColor: TColor.grey,
                    inputType: TextInputType.emailAddress,
                    key: formKey,
                    saved: (value) {
                      if (formKey.currentState!.validate()) {}
                      email = value;
                    },
                  ),
                  const Sbox(
                    h: 10,
                  ),
                  //PassWord Section
                  const PassWordSectionRegisterW(),
                  CustomFormField(
                    hintText: "please enter yor Password",
                    hintTextColor: TColor.grey,
                    security: true,
                    key: formKey,
                    saved: (value) {
                      if (formKey.currentState!.validate()) {
                        password = password;
                      }
                    },
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
                  BlocConsumer<RegisterCubit, RegisterStates>(
                      listener: (context, state) {
                    if (state is RegisterSuccessState) {
                      debugPrint(state.model.toString());
                      NavigationUsage.navigateTo(
                          context,
                          VerificationLoginScreen(
                              tokenRegister: state.model!.token));
                    } else if (state is RegisterErrorState) {
                      debugPrint(state.error);
                    }
                  }, builder: (context, state) {
                    if (state is! RegisterLoadingState) {
                      return CustomButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<RegisterCubit>().register(
                                email: email, phone: phone, password: password);
                          }
                        },
                        bgColor: TColor.grey2,
                        textColor: Colors.grey,
                        text: 'Register',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        width: 300,
                        radius: 40,
                        borderColor: TColor.iconGary,
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
                  const Sbox(
                    h: 30,
                  ),
                  SignInRegisterW(
                    name: "Login",
                    caption: 'Aleady have an account?',
                    onTap: () {
                      NavigationUsage.navigateTo(context, const LoginScreen());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
