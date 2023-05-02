import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/edit_profile/edit_profile.dart';
import 'package:salute_medical/views/screens/transaction_screen/transaction_screen.dart';

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
              children:  [
                ListTile(
                  onTap: (){
                    NavigationUsage.navigateTo(context, const EditProfileScreen());
                  },
                  title: const CustomText(text:
                  'Edit Profile ',
                  fontW: FontWeight.bold,
                  ),
                  leading: const Icon(
                      Icons.home_outlined,
                    color: TColor.prim,
                  ),
                  trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                const ListTile(
                  title: CustomText(text:
                  'My Trips',
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
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                ListTile(
                  onTap: (){
                    NavigationUsage.navigateTo(context,  const TransactionScreen());
                  },
                  title: const CustomText(text:
                  'Transaction',
                    fontW: FontWeight.bold,
                  ),
                  leading: const Icon(
                    Icons.wallet_giftcard_outlined,
                    color: TColor.prim,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.prim,
                  ),
                ),
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                const Sbox(h: 15,),
                const CustomText(text:
                'General',
                  fontW: FontWeight.bold,
                ),
                const ListTile(
                  title: CustomText(text:
                  'My documents',
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
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                const ListTile(
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
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                const ListTile(
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
                Container(
                  height: 2.w,
                  color: TColor.grey,
                ),
                const ListTile(
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
