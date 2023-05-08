import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_cubit.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

import '../layout_screen/layout_screen.dart';

class SignatureShow extends StatelessWidget {
  const SignatureShow({super.key, required this.data});
  final Uint8List? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(context: context, name: 'Signature'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.memory(data!),
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
                      NavigationUsage.navigateTo(context, const LayoutScreen()),
                      TripCubit.get(context).stepIndex = 0
                    }),
          ),
        ],
      ),
    );
  }
}
