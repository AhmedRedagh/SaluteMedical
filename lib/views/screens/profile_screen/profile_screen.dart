import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';
import 'package:salute_medical/views/widgets/profile_widget/profile_list_edit.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                EditProfile(),
                Sbox(h: 20,),
                Container(
                  height: 5.w,
                  color: TColor.grey2,
                ),
                Sbox(h: 20,),
                SettingProfile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
