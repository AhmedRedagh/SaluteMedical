import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';

class CustomFormField extends StatelessWidget {
  String? hintText;
  bool security;
  TextInputType inputType;
  String? validation;
  Function(dynamic)? saved;
  int maxLine;
  Widget? prefix;
  Widget? suffix;
  Function(String)? onChanged;
  int? number;
  String? labelText;
  Color? hintTextColor;
  Color? labelTextColor;

  CustomFormField({
    Key? key,
    this.hintText,
    this.inputType = TextInputType.text,
    this.saved,
    this.validation,
    this.security = false,
    this.maxLine = 1,
    this.prefix,
    this.suffix,
    this.onChanged,
    this.labelText,
    this.number,
    this.hintTextColor,
    this.labelTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || value.length < number!) {
          return validation;
        }
        return null;
      },
      onSaved: saved,
      obscureText: security,
      maxLines: maxLine,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hintText,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.0.sp,
          color: hintTextColor,
        ),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.0.sp,
          color: labelTextColor,
        ),
        enabledBorder:  const  UnderlineInputBorder(
          borderSide: BorderSide(color: TColor.underInput),
        ),
        focusedBorder: const  UnderlineInputBorder(
          borderSide: BorderSide(
            color: TColor.underInput,
          ),
        ),
      ),
    );
  }
}
