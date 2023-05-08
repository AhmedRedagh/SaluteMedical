// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/screens/trip_details/trip_details.dart';
import 'package:salute_medical/views/widgets/home_widgets/from_to_card_section.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_card_button_column.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_date_row.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
    this.tripDetails,
    this.isaproved,
  });
  final TripDtls? tripDetails;
  final bool? isaproved;
  Color cardColor() {
    if (isaproved == true) {
      return Colors.blue.shade100;
    } else if (isaproved == false) {
      return const Color.fromARGB(255, 227, 130, 102);
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Trip Number:',
                  color: Colors.black,
                  fontW: FontWeight.bold,
                  fontSize: 25,
                  toUpperCase: false,
                ),
                const Sbox(
                  w: 4,
                ),
                Expanded(
                  child: CustomText(
                    text: tripDetails?.tripNumber,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                    maxLine: 1,
                    fontW: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              text: tripDetails?.pickUpAdress,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20,
                              maxLine: 1,
                            ),
                          ),
                          Expanded(
                            child: CustomText(
                              text: tripDetails?.destinationAdress,
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
                const DetailsButtonColumn()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
