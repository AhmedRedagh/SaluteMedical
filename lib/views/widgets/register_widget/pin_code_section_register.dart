import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salute_medical/bloc/register_cubit/register_cubit.dart';
import 'package:salute_medical/bloc/register_cubit/register_states.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_cubit.dart';
import 'package:salute_medical/config/globals_variable.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class PinCodeRegisterW extends StatefulWidget {
  const PinCodeRegisterW({
    super.key,
    this.btnColor = TColor.iconGary,
    this.phone,
    this.email,
    this.password,
  });
  final String? phone, email, password;
  final Color? btnColor;

  @override
  State<PinCodeRegisterW> createState() => _PinCodeRegisterWState();
}

class _PinCodeRegisterWState extends State<PinCodeRegisterW> {
  String? code;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (value) {
              code = value;
            },
            hintCharacter: '*',
          ),
        ),
        const SizedBox(width: 50),
        BlocConsumer<RegisterCubit, RegisterStates>(
          builder: (context, state) {
            if (state is! RegisterLoadingState) {
              return TextButton(
                  onPressed: () {
                    context.read<RegisterCubit>().register(
                        email: widget.email,
                        password: widget.password,
                        phone: widget.phone);

                    // context
                    //     .read<RegisterCubit>()
                    //     .verificationRegister(phone: widget.phone, code: code);
                  },
                  child: CustomText(
                    text: 'Get Code',
                    fontSize: 20,
                    fontW: FontWeight.bold,
                    color: widget.btnColor as Color,
                  ));
            } else {
              return const CircularProgressIndicator();
            }
          },
          listener: (context, state) {
            if (state is RegisterSuccessState) {
              debugPrint(state.model.toString());
              context.read<VerificationCubit>().setCode(code);
              token = state.model!.token;
              debugPrint(code);
              Fluttertoast.showToast(
                  msg: state.model!.message!,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: TColor.greenSuccess,
                  textColor: Colors.white,
                  fontSize: 16.0);
              //    NavigationUsage.navigateTo(context, const LoginScreen());
            } else if (state is RegisterErrorState) {
              context.read<VerificationCubit>().setCode(code);
              debugPrint(' state ${state.errorsModel!['message']}');
              Fluttertoast.showToast(
                  msg: state.errorsModel!['message'],
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: TColor.red24,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }
          },
        )
      ],
    );
  }
}
// CustomButton(
// bgColor: TColor.grey2,
// textColor: TColor.borderContainer,
// onTap: () => {},
// radius: 50,
// borderColor: TColor.grey2,
// text: 'Re-get Code',
// fontSize: 17,
// width: 130,
// ),