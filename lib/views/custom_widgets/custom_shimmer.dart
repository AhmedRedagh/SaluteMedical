import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/custom_widgets/image_network.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmerCircle extends StatelessWidget {
  const LoadingShimmerCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 130,
        child: ListView.builder(
          itemCount: 6,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.grey[300]!,
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Column(
                  children: [
                    Container(
                      width: 100.w,
                      height: 100.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: TColor.grey5),
                        borderRadius: BorderRadius.circular(100.r),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://via.placeholder.com/100x100/0',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    CustomText(
                      text: "",
                      fontW: FontWeight.w500,
                      padding: EdgeInsets.only(top: 5.w),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

class LoadingShimmerBanner extends StatelessWidget {
  const LoadingShimmerBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[200]!,
        highlightColor: Colors.grey[300]!,
        child: Container(
          height: 190.w,
          width: 1.sw,
          color: TColor.greenSuccess,
        ));
  }
}

class LoadingShimmerLatestProduct extends StatelessWidget {
  const LoadingShimmerLatestProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180,
        child: ListView.builder(
          itemCount: 6,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.grey[300]!,
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: ImageNetwork(
                        width: 150.w,
                        height: 143.w,
                        url: "https://via.placeholder.com/100x100/0",
                      ),
                    ),
                    CustomText(
                      text: "",
                      padding: EdgeInsets.only(top: 6.w, bottom: 2.6.w),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          text: "",
                          color: TColor.redAccent,
                          fontSize: 11,
                          underline: true,
                          // fontW: FontWeight.bold,
                        ),
                        Sbox(
                          w: 10.0,
                        ),
                        CustomText(
                          text: "",
                          color: TColor.redAccent,
                          fontSize: 11,
                          fontW: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
