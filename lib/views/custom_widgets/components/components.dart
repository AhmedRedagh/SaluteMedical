import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';

class NavigationUsage {
  static navigateTo(context, route) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => route,
        ));
  }

  static getBack(context) {
    Navigator.pop(context);
  }

  static void navigateAndFinish({@required route, @required context}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => route()));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => route,
        ),
        (Route<dynamic> route) => false);
  }
}

Color isApproved(bool? approved) {
  if (approved == true) {
    return const Color.fromARGB(255, 227, 130, 102);
  } else {
    return Colors.white;
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        color: TColor.lightFontGray,
        borderRadius: BorderRadius.circular(1),
      ),
    );
  }
}
