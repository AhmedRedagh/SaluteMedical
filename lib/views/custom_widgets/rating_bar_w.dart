import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';

import 'custom_text.dart';

class RatingBarWidget extends StatelessWidget {
  final double rate, iconSize;
  final bool center, rateText;
  final bool ratingClick;
  Function(dynamic)? onRating;

   RatingBarWidget({
    this.rate = 3.0,
    this.iconSize = 14.5,
    this.center = false,
    this.rateText = true,
    this.ratingClick = false,
    this.onRating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          center ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        RatingBar.builder(
          tapOnlyMode: true,
           ignoreGestures: ratingClick,
          initialRating: rate,
          minRating: 1,
          unratedColor:   const Color(0xffCACACA),
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: ScreenUtil().setSp(iconSize),
          itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Color(0xffFFCC00),
          ),
          onRatingUpdate: onRating!,
          // onRatingUpdate: onRating!,
        ),
        if (rateText)
          CustomText(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            text: "( $rate )",
            color: TColor.text,
            fontSize: 10,
          )
        else
          const SizedBox(),
      ],
    );
  }
}
