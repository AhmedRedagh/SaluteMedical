import 'package:flutter/material.dart';

import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/appbar/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/login_screen/login_screen.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class AcountStatusScreen extends StatelessWidget {
  const AcountStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(context: context, name: 'Acount Status'),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                  text: 'Welcome back ',
                  fontSize: 50,
                  fontW: FontWeight.bold,
                ),
                const Sbox(),
                const CustomText(
                  text: 'Your request is still under review ',
                  fontSize: 25,
                  fontW: FontWeight.bold,
                ),
                const Sbox(
                  h: 20,
                ),
                Image.asset(
                  'assets/images/waiting.png',
                  scale: 1,
                ),
                const Sbox(
                  h: 30,
                ),
                const CustomText(
                  text: 'You can come back soon ',
                  fontSize: 25,
                  fontW: FontWeight.bold,
                  maxLine: 2,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80, bottom: 40),
                  child: CustomButton(
                    bgColor: TColor.prim,
                    textColor: Colors.white,
                    text: 'Done',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    width: 300,
                    radius: 40,
                    borderColor: TColor.iconGary,
                    onTap: () => {
                      NavigationUsage.navigateTo(context, const LoginScreen())
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
