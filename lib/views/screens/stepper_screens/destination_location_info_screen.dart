import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_cubit.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/trip_pickup_destination/pickup_destination_item.dart';

class DestLocInfoScreen extends StatelessWidget {
  const DestLocInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 250.h,
          color: Colors.amber,
        ),
        const CustomText(
          text: 'Client Name - Phone Number',
          fontSize: 22,
          fontW: FontWeight.bold,
        ),
        const Sbox(h: 10),
        const CustomText(
          text: 'Destination Name : NW SAN ANTONIO ',
          maxLine: 2,
          fontSize: 16,
          fontW: FontWeight.w400,
        ),
        const Sbox(h: 8),
        const HorizontalLine(),
        const Sbox(h: 8),
        DestinationPickupRow(
          pickUpAdress: 'TripDtls().pickUpAdress',
          title: 'PickUp Adress',
          circleColor: Colors.red.shade900,
        ),
        const Sbox(h: 8),
        const HorizontalLine(),
        const Sbox(h: 8),
        DestinationPickupRow(
          destinationAdress: 'TripDtls().destinationAdress',
          title: 'Destination Adress',
          circleColor: Colors.blue.shade900,
        ),
        const Sbox(h: 20),
         const Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  CustomText(
                    text: 'PickUp Time',
                    fontSize: 22,
                    fontW: FontWeight.bold,
                  ),
                  Sbox(h: 10),
                  CustomText(
                    text: '4:30 AM ',
                    maxLine: 2,
                    fontSize: 16,
                    fontW: FontWeight.w400,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomText(
                    text: 'Appointment Time',
                    fontSize: 22,
                    fontW: FontWeight.bold,
                  ),
                  Sbox(h: 10),
                  CustomText(
                    text: '4:30 AM  ',
                    maxLine: 2,
                    fontSize: 16,
                    fontW: FontWeight.w400,
                  ),
                ],
              ),
            )
          ],
        ),
        const Sbox(h: 50),
        Center(
          child: CustomButton(
            bgColor: const Color.fromARGB(255, 140, 184, 52),
            borderColor: const Color.fromARGB(255, 140, 184, 52),
            textColor: Colors.black,
            text: ' Get Destination Location ',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            width: 300,
            radius: 40,
            onTap: () => TripCubit.get(context).stepChanger(),
          ),
        ),
      ],
    );
  }
}
