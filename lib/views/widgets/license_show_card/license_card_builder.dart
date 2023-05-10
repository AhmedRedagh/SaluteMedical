import 'package:flutter/material.dart';

import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class LisenceCardBuilder extends StatelessWidget {
  final String? name;
  const LisenceCardBuilder({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: name,
              fontSize: 30,
              fontW: FontWeight.bold,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5.5,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: name != 'Car Photo'
                          ? const NetworkImage(
                              'https://cdn.dribbble.com/users/2454973/screenshots/18226493/media/68fc1e855bd42dd7eddfc3b8d9936ca2.jpg?compress=1&resize=1000x750&vertical=top',
                              scale: 2)
                          : const NetworkImage(
                              'https://cdn.dribbble.com/users/1418633/screenshots/15678998/media/5c46a9031ba2c975dfcf1b3ff4af3e4d.png?compress=1&resize=1000x750&vertical=top',
                              scale: 5),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
