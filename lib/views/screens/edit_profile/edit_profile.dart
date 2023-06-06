import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:salute_medical/bloc/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:salute_medical/bloc/edit_profile_cubit/edit_profile_states.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/data/models/get_profile_model/get_profile_model.dart';
import 'package:salute_medical/data/models/profile_info/profile_info.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';

class EditProfileScreen extends StatefulWidget {
  final GetProfileModel? profileModel;
  const EditProfileScreen({Key? key, this.profileModel}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  ProfileInfo? edittedProfile;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EditProfile(isEdit: true, profileModel: widget.profileModel),
                  CustomFormField(
                    prefix: const Icon(Icons.location_city),
                    hintText: "City ID ",
                    hintTextColor: TColor.grey,
                    validation: "Please write your phone number",
                    number: 1,
                    inputType: TextInputType.number,
                    onChanged: (value) {},
                    saved: (value) {
                      edittedProfile!.setCity = value;
                    },
                  ),
                  CustomFormField(
                      prefix: const Icon(Icons.person),
                      hintText: "first_name ",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.firstName = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.phone_android_outlined),
                      hintText: "phone ",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.phone = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.person_2),
                      hintText: "last_name",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.setLastName = value;
                      }),
                  CustomFormField(
                      prefix: Icon(
                        Icons.person_4_outlined,
                        color: Colors.grey.shade600,
                      ),
                      hintText: "username",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.setUserName = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.email_outlined),
                      hintText: "email",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.email = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.date_range),
                      hintText: "date_of_birth",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.phone = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.lock),
                      hintText: "Password",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.password = value;
                      }),
                  CustomFormField(
                      prefix: const Icon(Icons.lock),
                      hintText: "Confirm Password",
                      hintTextColor: TColor.grey,
                      validation: "Please write your phone number",
                      number: 1,
                      onChanged: (value) {},
                      saved: (value) {
                        edittedProfile!.setconfirmedPass = value;
                      }),
                  const Sbox(
                    h: 40,
                  ),
                  BlocConsumer<EditProfileCubit, EditProfileStates>(
                    builder: (context, state) {
                      if (state is! EditProfileLoadingState) {
                        return CustomButton(
                          bgColor: Colors.grey,
                          textColor: Colors.black,
                          borderColor: Colors.grey.shade700,
                          radius: 50,
                          text: 'Save',
                          width: 310,
                          fontSize: 17,
                          onTap: () {
                            _formKey.currentState!.save();
                            debugPrint('email ${edittedProfile!.email}');

                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              context.read<EditProfileCubit>().profileUpdate(
                                  updatedProfile: edittedProfile);
                              debugPrint(edittedProfile!.email);
                            }
                            context.read<EditProfileCubit>().profileUpdate();
                            debugPrint(edittedProfile!.email);
                          },
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                    listener: (context, state) {
                      if (state is EditProfileSuccessState) {
                        Fluttertoast.showToast(
                            msg: state.model!.message!,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: TColor.greenSuccess,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
