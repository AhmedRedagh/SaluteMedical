import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 73,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            backgroundColor: TColor.white,
            radius: 70,
            backgroundImage: AssetImage(
              'assets/images/profile.png',
            ),
          ),
        ),
        Sbox(
          h: 15,
        ),
        CustomText(
          text: 'MOHAMED AHMED',
          fontSize: 20,
          fontW: FontWeight.bold,
        ),
        Sbox(
          h: 15,
        ),
        CustomText(
          text: '625484821312',
          fontSize: 20,
          fontW: FontWeight.bold,
        ),
        Sbox(
          h: 15,
        ),
        // CustomButton(
        //   bgColor: TColor.prim,
        //   text: 'Edit Profile ',
        //   fontSize: 15,
        //   radius: 50,
        //   width: 150,
        //   height: 35,
        // ),
      ],
    );
  }
}
