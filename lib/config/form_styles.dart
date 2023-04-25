import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'theme_colors.dart';

class FormStyles {
  static InputDecoration textFieldStyle({
    String labelTextStr = "",
    String hintTextStr = "Hint Text",
    bool filled = true,
    bool secureState = true,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color focusedBorderColor = TColor.text,
  }) {
    return InputDecoration(
      // fillColor: TColor.fillForm,
      // filled: filled,
      contentPadding: const EdgeInsets.symmetric(vertical: 15),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      // labelText: labelTextStr,
      hintText: hintTextStr,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: TColor.grey5),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: focusedBorderColor),
      ),

      hintStyle: TextStyle(color: TColor.textForm, fontSize: 13.sp),
    );
  }
}
