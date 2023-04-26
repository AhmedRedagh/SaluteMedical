import 'package:flutter/material.dart';

navigateTo(context, route) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}

getBack(context) {
  Navigator.pop(context);
}
