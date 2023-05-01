import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({Key? key}) : super(key: key);

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
          h: 1000.w,
          child: ListView(
              children: const [
                ListTile(
                  title: CustomText(text:
                  'Saved Address',
                  fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                      Icons.home_outlined,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                ListTile(
                  title: CustomText(text:
                  'My Reward',
                  fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.wallet_giftcard_outlined,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                ListTile(
                  title: CustomText(text:
                  'Redeem promo code',
                    fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.wallet_giftcard_outlined,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                CustomText(text:
                'General',
                  fontW: FontWeight.bold,
                ),
                ListTile(
                  title: CustomText(text:
                  'Settings',
                    fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                ListTile(
                  title: CustomText(text:
                  'Help & Support',
                    fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.message_rounded,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                ListTile(
                  title: CustomText(text:
                  'Term & Conditions',
                    fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.wallet_giftcard_outlined,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                ListTile(
                  title: CustomText(text:
                  'privacy police',
                    fontW: FontWeight.bold,
                  ),
                  leading: Icon(
                    Icons.local_police_rounded,
                    color: TColor.prim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
              ],
            ),
        ),
      ],
    );
  }
}
