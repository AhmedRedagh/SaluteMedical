import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/layout_cubit/welcome_cubit.dart';
import 'package:salute_medical/bloc/layout_cubit/welcome_states.dart';

import 'package:salute_medical/views/custom_widgets/custom_button.dart';

import '../../../config/theme_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = WelcomeCubit.get(context);
    return BlocBuilder<WelcomeCubit, WelcomeStates>(
      builder: (context, state) => Scaffold(
        body: Column(
          children: [
            //logo
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 200, left: 10, right: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(height: 100),
            //Register Button
            CustomButton(
              bgColor: TColor.prim,
              onTap: () => cubit.regNav(context),
              radius: 50,
              text: 'Register',
              width: 310,
              fontSize: 17,
            ),
            const SizedBox(height: 20),
            //Login Button
            CustomButton(
              bgColor: Colors.white,
              textColor: TColor.prim,
              onTap: () => {},
              radius: 50,
              text: 'Login',
              fontSize: 17,
              width: 310,
            ),
          ],
        ),
      ),
    );
  }
}
