import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';

class CustomFormFieldWithBorder extends StatelessWidget {
  String? hintText;
  bool security;
  TextInputType inputType;
  String? validation;
  Function(dynamic)? saved;
  int maxLine;
  Widget? prefix;
  Widget? suffix;
  double? radiusNumber;
  Function(String)? onChanged;
  int? number;
  double? paddingLeft;
  double? paddingRight;
  double? formFieldWidth;
  double? contentPaddingVertical;
  double? contentPaddingHorizontal;
  Color? fillColor;
  TextEditingController? controller;

  CustomFormFieldWithBorder({
    this.hintText,
    this.inputType = TextInputType.text,
    this.saved,
    this.validation,
    this.security = false,
    this.maxLine = 1,
    this.prefix,
    this.suffix,
    this.radiusNumber = 5,
    this.onChanged,
    this.fillColor = TColor.fillFormField,
    this.paddingLeft = 20,
    this.paddingRight = 20,
    this.formFieldWidth = 328,
    this.contentPaddingVertical = 12,
    this.contentPaddingHorizontal = 10,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft!.w, right: paddingRight!.w),
      child: SizedBox(
        width: formFieldWidth!.w,
        child: TextFormField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            filled: true,
            fillColor: fillColor,
            contentPadding: EdgeInsets.symmetric(
                vertical: contentPaddingVertical!,
                horizontal: contentPaddingHorizontal!),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: TColor.tabColors,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radiusNumber!),
                borderSide:
                    const BorderSide(color: TColor.fillFormField, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radiusNumber!),
                borderSide:
                    const BorderSide(color: TColor.fillFormField, width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radiusNumber!),
                borderSide:
                    const BorderSide(color: TColor.fillFormField, width: 1)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radiusNumber!),
                borderSide:
                    const BorderSide(color: TColor.fillFormField, width: 1)),
          ),
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
        ),
      ),
    );
  }
}
