import 'package:flutter/material.dart';

class LogoSectionLogin extends StatelessWidget {
  const LogoSectionLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.contain)),
    );
  }
}
