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
