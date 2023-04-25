// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../utils/assets_utils.dart';
// import '../custom_button.dart';
// import '../custom_text.dart';

// Future dialogOk({
//   String title = 'title',
//   String body = 'body',
//   String imageName = 'success.png',
//   String buttonName = 'buttonName',
//   VoidCallback? onTapOk,
// }) {
//   return Get.dialog(
//     Center(
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 16.w),
//         width: 9.sw,
//         height: 355.w,
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
//               CustomButton(
//                 width: ScreenUtil().setWidth(228),
//                 text: buttonName,
//                 fontSize: 13,
//                 onTap: onTapOk,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
