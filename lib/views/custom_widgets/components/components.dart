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
  const HorizontalLine({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1,
      decoration: BoxDecoration(
        color: TColor.lightFontGray,
        borderRadius: BorderRadius.circular(1),
      ),
    );
  }
}

bool isValidEmail(value) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(value);
}

enum PasswordError {
  upperCase('Must contain at least one uppercase'),
  lowerCase('Must contain at least one lowercase'),
  digit('Must contain at least one digit'),
  specialCharacter('Contain at least one special character: !@#\\\$&*~');

  final String message;

  const PasswordError(this.message);
}

class PasswordCheck {
  static List<PasswordError> passwordValidator(String password) {
    List<PasswordError> errors = [];
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      errors.add(PasswordError.upperCase);
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      errors.add(PasswordError.lowerCase);
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      errors.add(PasswordError.digit);
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) {
      errors.add(PasswordError.specialCharacter);
    }

    return errors;
  }
}
