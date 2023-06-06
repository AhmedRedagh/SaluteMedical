import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/data/models/get_profile_model/get_profile_model.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class EditProfile extends StatefulWidget {
  final bool isEdit;
  final double? radius;
  final GetProfileModel? profileModel;
  const EditProfile({
    Key? key,
    this.isEdit = false,
    this.radius = 63,
    this.profileModel,
  }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            CircleAvatar(
              radius: widget.radius,
              backgroundColor: Colors.green,
              child: image == null
                  ? const CircleAvatar(
                      backgroundColor: TColor.white,
                      radius: 60,
                      backgroundImage: NetworkImage(""))
                  : CircleAvatar(
                      backgroundColor: TColor.white,
                      radius: 60,
                      backgroundImage: FileImage(image!)),
            ),
            widget.isEdit
                ? InkWell(
                    onTap: () => getImage(),
                    child: const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.camera_alt),
                    ),
                  )
                : const SizedBox()
          ],
        ),
        const Sbox(
          h: 15,
        ),
        CustomText(
          text: widget.profileModel!.data!.username ?? "",
          fontSize: 20,
          fontW: FontWeight.bold,
        ),
        const Sbox(
          h: 15,
        ),
        CustomText(
          text: widget.profileModel!.data!.phone ?? "",
          fontSize: 20,
          fontW: FontWeight.bold,
        ),
        const Sbox(
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

  Future getImage() async {
    try {
      final images = await ImagePicker().pickImage(source: ImageSource.gallery);
      final imageFile = File(images!.path);
      setState(() {
        image = imageFile;
      });
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }
}
