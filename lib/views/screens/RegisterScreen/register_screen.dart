import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:salute_medical/bloc/register_cubit/register_cubit.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_cubit.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_state.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/login_screen/login_screen.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';
import 'package:salute_medical/views/widgets/register_widget/mail_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/password_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/phone_section_register_w.dart';
import 'package:salute_medical/views/widgets/register_widget/verify_section_register.dart';

import '../../widgets/register_widget/pin_code_section_register.dart';
import '../../widgets/register_widget/sign_in_section_register_w.dart';
// import 'package:provider/src/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String? code;
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  Color txtBtnColor = TColor.iconGary;
  String? email, phone, password;
  final codePicker = const FlCountryCodePicker();
  IconData? phoneIcon, emailIcon, passIcon;
  String? countryCode;
  Widget? flag;

  @override
  void initState() {
    flag = Image.asset(
      width: 20,
      fit: BoxFit.contain,
      'assets/flags/eg.png',
      package: 'fl_country_code_picker',
    );

    super.initState();
  }

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
              key: _formKey,
              child: Column(
                children: [
                  //Number Section
                  const PhoneSectionRegisterW(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          final code = await codePicker.showPicker(
                            context: context,
                          );
                          setState(() {
                            countryCode = code!.dialCode;
                            flag = code.flagImage;
                          });
                        },
                        child: Wrap(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 12),
                                height: 32,
                                width: 32,
                                child: flag),
                            Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black),
                              child: Text(
                                countryCode != null ? '$countryCode' : '+20',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: CustomFormField(
                        hintText: "please enter yor Phone Number",
                        hintTextColor: TColor.grey,
                        validation: 'Please write your phone number correctly',
                        inputType: TextInputType.phone,
                        number: 9,
                        onChanged: (value) {
                          if (value.length > 7) {
                            setState(() {
                              txtBtnColor = Colors.blue;
                              phone = value;
                              phoneIcon = Icons.check;
                            });
                          } else {
                            txtBtnColor = TColor.iconGary;
                            setState(() {
                              phone = value;
                              phoneIcon = Icons.close;
                            });
                          }
                        },
                        saved: (value) {
                          phone = value;
                        },
                      )),
                      Icon(
                        phoneIcon,
                        color:
                            phoneIcon == Icons.close ? Colors.red : Colors.blue,
                      ),
                    ],
                  ),

                  const Sbox(
                    h: 10,
                  ),
                  //Mail Section
                  const MailSectionRegisterW(),
                  CustomFormField(
                    hintText: "please enter yor Email",
                    hintTextColor: TColor.grey,
                    inputType: TextInputType.emailAddress,
                    number: 4,
                    suffix: Icon(
                      emailIcon,
                      color:
                          emailIcon == Icons.close ? Colors.red : Colors.blue,
                    ),
                    validation: 'please enter yor Email Correctly',
                    onChanged: (value) {
                      setState(() {
                        email = value;

                        if (isValidEmail(value)) {
                          emailIcon = Icons.check;
                        } else {
                          emailIcon = Icons.close;
                        }
                      });
                    },
                  ),
                  const Sbox(
                    h: 10,
                  ),
                  //PassWord Section
                  const PassWordSectionRegisterW(),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "please enter yor Password",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0.sp,
                        color: Colors.grey,
                      ),
                      suffix: Icon(
                        passIcon,
                        color:
                            passIcon == Icons.close ? Colors.red : Colors.blue,
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    validator: (password) {
                      if (password != null) {
                        // Get all errors
                        final validators =
                            PasswordCheck.passwordValidator(password);
                        if (validators.isEmpty) return null;
                        return validators
                            .map((e) => '- ${e.message}')
                            .join('\n');
                      }

                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                      List<PasswordError> passError =
                          PasswordCheck.passwordValidator(value);
                      debugPrint(passError.toString());
                      if (value.length > 8) {
                        if (passError.isEmpty) {
                          passIcon = Icons.check;
                        }
                      } else {
                        passIcon = Icons.close;
                      }
                    },
                    onSaved: (val) {
                      password = val;
                    },
                  ),
                  const Sbox(
                    h: 10,
                  ),

                  const CustomText(
                    height: true,
                    maxLine: 2,
                    text:
                        '8-20 digits, At least 1 special characters 1 uppercase letter, with no continuous digits',
                  ),
                  const Sbox(h: 10),
                  const HorizontalLine(height: 3.5),

                  const Sbox(h: 20), //verification Code Section
                  const VerifySectionRegisterW(),
                  PinCodeRegisterW(
                    btnColor: txtBtnColor,
                    phone: countryCode != null
                        ? '$countryCode$phone'
                        : '+20$phone',
                    email: email,
                    password: password,
                  ),

                  const Sbox(
                    h: 50,
                  ),
                  //RegisterButton

                  BlocConsumer<VerificationCubit, VerificationStates>(
                    builder: (context, state) {
                      if (state is! VerificationLoadingStates) {
                        return CustomButton(
                          onTap: () {
                            context.read<VerificationCubit>().verify(
                                  phone: phone,
                                  code: Provider.of<VerificationCubit>(context,
                                          listen: false)
                                      .pinCode,
                                );
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
                    },
                    listener: (context, state) {
                      if (state is VerificationSuccessStates) {
                        NavigationUsage.navigateTo(
                            context, const LoginScreen());
                        Fluttertoast.showToast(
                            msg: state.verifyModels!.message!,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: TColor.greenSuccess,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (state is VerificationErrorStates) {
                        Fluttertoast.showToast(
                            msg: state.error!,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: TColor.greenSuccess,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                  ),
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
