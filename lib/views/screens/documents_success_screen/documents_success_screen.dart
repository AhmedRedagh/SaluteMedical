import 'package:flutter/material.dart';

import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/layout_screen/layout_screen.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class DocSuccessScreen extends StatelessWidget {
  const DocSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(context: context, name: 'Send Documents'),
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
                  text: 'Thank you ',
                  fontSize: 50,
                  fontW: FontWeight.bold,
                ),
                const Sbox(),
                const CustomText(
                  text: 'Your documents have been received ',
                  fontSize: 25,
                  fontW: FontWeight.bold,
                ),
                const Sbox(
                  h: 20,
                ),
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: TColor.prim,
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 100,
                    weight: 5,
                  ),
                ),
                const Sbox(
                  h: 30,
                ),
                const CustomText(
                  text: 'We will review your documents and respond to you ',
                  fontSize: 20,
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
                    onTap: () => NavigationUsage.navigateTo(
                        context, const LayoutScreen()),
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
