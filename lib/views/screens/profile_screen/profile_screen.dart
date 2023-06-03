// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/get_profile_cubit/get_profile_cubit.dart';
import 'package:salute_medical/bloc/get_profile_cubit/get_profile_state.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';
import 'package:salute_medical/views/widgets/profile_widget/profile_list_edit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileCubit, GetProfileStates>(
        builder: (context, state) {
      if (state is GetProfileLoadingState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is GetProfileSuccessState) {
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
      } else if (state is GetProfileErrorState) {
        return const SizedBox();
      } else {
        return const SizedBox();
      }
    });
  }
}
