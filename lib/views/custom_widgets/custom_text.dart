import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final bool textShadow;
  final TextOverflow overflow;
  final bool underline;
  final FontWeight fontW;
  final bool toUpperCase;
  final EdgeInsetsGeometry padding;
  final int? maxLine;
  final bool height;
  final double styleHeight;

  const CustomText({
    Key? key,
    @required this.text,
    this.color = TColor.titleSub,
    this.fontSize = 14.0,
    this.textAlign,
    this.height = false,
    this.letterSpacing,
    this.textShadow = false,
    this.overflow = TextOverflow.clip,
    this.toUpperCase = false,
    this.underline = false,
    this.fontW = FontWeight.w300,
    this.padding = const EdgeInsets.all(0),
    this.maxLine = 1,
    this.styleHeight = 1.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        toUpperCase ? text!.toUpperCase() : text!,
        textAlign: textAlign,
        maxLines: maxLine,
        style: TextStyle(
          color: color,
          fontFamily: "Helvetica",
          fontWeight: fontW,
          fontSize: ScreenUtil().setSp(fontSize),
          letterSpacing: letterSpacing,
          height: height ? styleHeight : null,
          shadows: textShadow
              ? [
                  const Shadow(
                    blurRadius: 0.8,
                    offset: Offset(1, 1),
                  )
                ]
              : [],
          decoration: underline ? TextDecoration.lineThrough : null,
        ),
        overflow: overflow,
      ),
    );
  }
}
