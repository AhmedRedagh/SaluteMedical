// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/home_widgets/from_to_card_section.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_card_button_column.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_date_row.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
    required this.tripNumber,
    required this.pickUpAdress,
    required this.destinationAdress,
  });
  final String tripNumber;
  final String pickUpAdress;
  final String destinationAdress;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              //1st column//
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Trip Number:',
                        color: Colors.black,
                        fontW: FontWeight.bold,
                        fontSize: 25,
                      ),
                      const Sbox(
                        w: 4,
                      ),
                      CustomText(
                        text: tripNumber,
                        color: Colors.black,
                        fontW: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ],
                  ),
                  const Sbox(
                    h: 18.0,
                  ),
                  //FromTo Row//
                  const FromToSection(),
                  const Sbox(
                    h: 3,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          text: pickUpAdress,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 20,
                          maxLine: 1,
                        ),
                      ),
                      Expanded(
                        child: CustomText(
                          text: destinationAdress,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 20,
                          maxLine: 1,
                        ),
                      ),
                    ],
                  ),
                  const Sbox(
                    h: 10,
                  ),
                  //DateRow//
                  const RequestDateSection(),
                  const SizedBox(
                    height: 15.0,
                  )
                ],
              ),
            ),
            //2nd Column//
            const DetailsButtonColumn()
          ],
        ),
      ),
    );
  }
}
