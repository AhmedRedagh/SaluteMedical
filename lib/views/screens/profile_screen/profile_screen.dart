// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';
import 'package:salute_medical/views/widgets/profile_widget/profile_list_edit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditProfile(),
              const Sbox(
                h: 20,
              ),
              Container(
                height: 5.w,
                color: TColor.grey2,
              ),
              const Sbox(
                h: 20,
              ),
              const SettingProfile()
            ],
          ),
        ),
      ),
    );
  }
}
