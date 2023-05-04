import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/screens/trip_details/trip_details.dart';

class DetailsButtonColumn extends StatelessWidget {
  const DetailsButtonColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          bgColor: const Color.fromARGB(200, 89, 138, 233),
          text: 'Details',
          borderColor: const Color.fromARGB(200, 89, 138, 233),
          textColor: Colors.black,
          onTap: () {
            NavigationUsage.navigateTo(
              context,
              const TripDetails(),
            );
          },
          width: 100,
          radius: 50,
          height: 35,
        )
      ],
    );
  }
}
