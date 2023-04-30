import 'package:flutter/material.dart';

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
}

Color isApproved(bool? approved) {
  if (approved == true) {
    return const Color.fromARGB(255, 227, 130, 102);
  } else {
    return Colors.white;
  }
}
