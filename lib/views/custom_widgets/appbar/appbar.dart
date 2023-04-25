// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// AppBar customAppBar({
//   Function? onPressed,
//   double bottomHeight = 40,
//   Widget bottom = const SizedBox(),
//   List<Widget>? actions,
//   bool transparent = false,
//   bool isHome = false,
//   bool titleLogo = true,
//   double elevation = 0,
//   String title = '',
// }) {
//   return AppBar(
//     elevation: elevation,
//     centerTitle: true,
//     title: titleLogo
//         ? Image.asset(
//             assetsImages('logo.png'),
//             height: 23.4.w,
//             width: 87.11.w,
//           )
//         : Directionality(
//             textDirection: TextDirection.ltr,
//             child: isHome
//                 ? Image.asset(assetsImages('castelo.png'), height: 30.w)
//                 : CustomText(
//                     text: title,
//                     fontSize: 16,
//                     fontW: FontWeight.w500,
//                   ),
//           ),

//     leading: isHome ? DrawerAppbar() : ArrowBackAppbar(),

//     backgroundColor: transparent ? Colors.transparent : Colors.white,
//     bottom: bottom.runtimeType == const SizedBox().runtimeType
//         ? const PreferredSize(preferredSize: Size.zero, child: SizedBox())
//         : PreferredSize(
//             preferredSize:
//                 Size.fromHeight(ScreenUtil().setHeight(bottomHeight)),
//             child: Directionality(
//               textDirection: TextDirection.ltr,
//               child: bottom,
//             ),
//           ), // elevation: 0,
//   );
// }

// class DrawerAppbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Builder(
//         builder: (drawerContext) => IconButton(
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//             // AppDrawer.of(drawerContext).toggle();
//           },
//           icon: Image.asset(
//             assetsImagesIcons('menu.png'),
//             height: 28.w,
//             width: 28.w,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IconAppbar extends StatelessWidget {
//   final Widget? child;
//   final GestureTapCallback? onTap;

//   const IconAppbar({this.child, this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: IconButton(
//         // highlightColor: Colors.transparent,
//         // hoverColor: Colors.transparent,
//         // focusColor: Colors.transparent,
//         // splashColor: Colors.transparent,
//         onPressed: onTap,
//         icon: child!,
//       ),
//     );
//   }
// }
