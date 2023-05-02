import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_form_field.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/profile_screen/profile_screen.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';
import 'package:salute_medical/views/widgets/register_widget/password_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/phone_section_register_w.dart';
import 'package:salute_medical/views/widgets/register_widget/pin_code_section_register.dart';
import 'package:salute_medical/views/widgets/register_widget/verify_section_register.dart';

class ModifyPassworld extends StatelessWidget {
  const ModifyPassworld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(
        name: 'Modify Password ',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:  [
            //  phone number section
              const PhoneSectionRegisterW(),
              const CustomFormField(
                hintText: "please input ",
              ),
              const Sbox(h: 15,),
              const VerifySectionRegisterW(),
              const PinCodeRegisterW(),
              const Sbox(h: 15,),
              const PassWordSectionRegisterW(),
              const CustomFormField(
                hintText: "please enter your Password",
                hintTextColor: TColor.grey,
                security: true,
                inputType: TextInputType.visiblePassword,
              ),
              const CustomText(
                height: true,
                maxLine: 2,
                text:
                '8-20 digits, At least 1 special characters 1 uppercase letter, with no continuous digits',
              ),
              const Sbox(h:80 ,),
              CustomButton(
                onTap: (){
                  NavigationUsage.navigateTo(context, const ProfileScreen());
                },
                bgColor: TColor.grey2,
                textColor: Colors.grey,
                text: 'Confirm Modification',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                width: 300,
                radius: 40,
                borderColor: TColor.iconGary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
