import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double? width;
  final String text;
  final IconData icon;
  final Function()? onTap;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  final bool outlineButton;
  final double fontSize;
  final double radius;
  final Widget? child;
  final FontWeight? fontWeight;

  const CustomButton({
    super.key,
    this.height = 50.0,
    this.width,
    this.onTap,
    this.text = 'ok',
    this.bgColor = TColor.black,
    this.icon = Icons.error,
    this.textColor = TColor.white,
    this.borderColor = Colors.blue,
    this.outlineButton = false,
    this.fontSize = 16,
    this.radius = 8,
    this.child,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.w,
      width: width?.w ?? 1.sw,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: outlineButton ? bgColor : textColor,
          backgroundColor: outlineButton ? textColor : bgColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: outlineButton ? borderColor : borderColor,
            ),
          ),
        ),
        onPressed: onTap,
        child: child ??
            CustomText(
              text: text,
              color: outlineButton ? bgColor : textColor,
              fontSize: fontSize.sp,
              fontW: fontWeight!,
            ),
      ),
    );
  }
}
