import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class ListEditProfile extends StatelessWidget {
  const ListEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text:
        'Account',
          fontW: FontWeight.bold,
        ),
        Sbox(
          w: 500.h,
          h: 500.w,
          child: ListView(
             children:  [
               ListTile(
                title: CustomText(text:
                'CHANGE profile photo ',
                  fontW: FontWeight.bold,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: TColor.prim,
                ),
              ),
               Container(
                height: 2.w,
                color: TColor.grey,
              ),
               ListTile(
                title: CustomText(text:
                'CHANGE phone number',
                  fontW: FontWeight.bold,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: TColor.prim,
                ),
              ),
               Container(
                height: 2.w,
                color: TColor.grey,
              ),
               ListTile(
                 title: CustomText(text:
                 'CHANGE phone number',
                   fontW: FontWeight.bold,
                 ),
                 trailing: Icon(
                   Icons.arrow_forward_ios_outlined,
                   color: TColor.prim,
                 ),
               ),
               Container(
                height: 2.w,
                color: TColor.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
