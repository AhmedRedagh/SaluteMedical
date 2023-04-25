import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sbox extends StatelessWidget {
  final double h;
  final double w;
  final bool fullWidth;
  final Widget? child;
  const Sbox({
    Key? key,
    this.h = 10.0,
    this.w = 0.0,
    this.fullWidth = false,
    this.child,
  }) : super(key: key);

  @override
  SizedBox build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? 1.sw : w.w,
      height: h.w,
      child: child,
    );
  }
}

final fullWidth = 1.sw;
