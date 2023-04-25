// import 'package:discount_locker/utils/assets_utils.dart';
// import 'package:discount_locker/utils/sized_box.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../custom_button.dart';
// import '../custom_text.dart';

// Future dialogYesNo({
//   String title = 'Title',
//   String yesText = 'Yes delete',
//   String noText = 'No',
//   String body = 'body',
//   String imageName = 'success.png',
//   VoidCallback? onTapYes,
//   VoidCallback? onTapNo,
// }) {
//   return Get.dialog(
//     Center(
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 16.w),
//         width: 9.sw,
//         height: 345.w,
//         child: Material(
//           borderRadius: BorderRadius.circular(25),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 115.w,
//                 child: Image.asset(assetsImages(imageName)),
//               ),
//               SizedBox(height: 13.w),
//               CustomText(
//                 text: title,
//                 fontSize: 16,
//                 fontW: FontWeight.bold,
//               ),
//               SizedBox(height: 25.w),
//               CustomText(
//                 text: body,
//                 fontSize: 12,
//                 fontW: FontWeight.w600,
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 32.w),
//               Row(
//                 children: [
//                   const Sbox(w: 20),
//                   Expanded(
//                     child: CustomButton(
//                       height: 45,
//                       radius: 6,
//                       text: yesText,
//                       fontSize: 13,
//                       onTap: onTapYes,
//                     ),
//                   ),
//                   const Sbox(w: 16),
//                   Expanded(
//                     child: CustomButton(
//                       bgColor: Colors.red,
//                       height: 45,
//                       radius: 6,
//                       text: yesText,
//                       fontSize: 13,
//                       onTap: onTapYes,
//                     ),
//                   ),
//                   const Sbox(w: 20),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
