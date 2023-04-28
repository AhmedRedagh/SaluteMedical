import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

AppBar appBarW({
  BuildContext? context,
  String? name,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () => NavigationUsage.getBack(context),
      icon: const Icon(Icons.arrow_back_ios_new_sharp),
      color: Colors.black,
    ),
    title: CustomText(
      text: name,
      color: Colors.black,
      fontW: FontWeight.bold,
      fontSize: 20,
    ),
    centerTitle: true,
    elevation: 0.5,
  );
}
