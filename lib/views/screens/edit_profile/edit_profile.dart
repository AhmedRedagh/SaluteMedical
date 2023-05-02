import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/widgets/edit_profilr/list_edit_profile.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EditProfile(),
                  Sbox(h: 40,),
                  Container(
                    height: 5.w,
                    color: TColor.grey2,
                  ),
                  Sbox(h: 15,),
                  ListEditProfile(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
