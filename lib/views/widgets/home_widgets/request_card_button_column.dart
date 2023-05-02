import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';

class DetailsButtonColumn extends StatelessWidget {
  const DetailsButtonColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          bgColor: const Color.fromARGB(200, 89, 138, 233),
          text: 'Details',
          borderColor: const Color.fromARGB(200, 89, 138, 233),
          textColor: Colors.black,
          onTap: () {},
          width: 100,
          radius: 50,
          height: 35,
        )
      ],
    );
  }
}
