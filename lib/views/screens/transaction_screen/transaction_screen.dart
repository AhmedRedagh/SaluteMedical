import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/profile_widget/edit_profile.dart';
import 'package:salute_medical/views/widgets/transaction_widget/lis_transaction.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

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
                  const EditProfile(),
                  const CustomText(text:
                  'Your Balance : 150 usd',
                    fontW: FontWeight.bold,
                    fontSize: 30,
                  ),
                  const Sbox(h: 40,),
                   Container(
                    height: 5.w,
                    color: TColor.grey2,
                  ),
                  const Sbox(h: 15,),
                  ListTransaction(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
