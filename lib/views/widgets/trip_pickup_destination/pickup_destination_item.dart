import 'package:flutter/material.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/circle_item-widget/circle_item.dart';

class DestinationPickupRow extends StatelessWidget {
  const DestinationPickupRow(
      {super.key,
      this.pickUpAdress,
      this.destinationAdress,
      required this.title,
      this.circleColor});
  final String title;
  final String? pickUpAdress;
  final String? destinationAdress;
  final Color? circleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BorderedCircle(color: circleColor),
        const Sbox(
          w: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 22,
              fontW: FontWeight.bold,
            ),
            const Sbox(h: 5),
            CustomText(
              text: title == 'PickUp Adress' ? pickUpAdress : destinationAdress,
              maxLine: 2,
              fontSize: 16,
              fontW: FontWeight.w400,
            ),
          ],
        )
      ],
    );
  }
}
