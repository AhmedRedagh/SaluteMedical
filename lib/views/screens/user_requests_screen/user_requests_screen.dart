import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_states.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/buttons_selection_section/buttons_selection_section.dart';

import 'package:salute_medical/views/widgets/home_widgets/request_card_item.dart';

class UserRequestsScreen extends StatelessWidget {
  const UserRequestsScreen({Key? key}) : super(key: key);

  final int initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<UserRequestsCubit, UserRequestsStates>(
        builder: (context, state) => Scaffold(
          body: Container(
            margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border:
                          Border.all(color: Colors.blue.shade200, width: 1.5)),
                  child: const CustomText(
                      text: 'Your Requests',
                      fontW: FontWeight.bold,
                      fontSize: 20),
                ),
                const Sbox(
                  h: 20,
                ),
                const RequestsButtons(),

                /// condition in index
                Expanded(
                  child: ListView.separated(
                    itemCount: 15,
                    separatorBuilder: (context, index) => const Sbox(
                      h: 10.0,
                    ),
                    itemBuilder: (context, index) {
                      return RequestCard(
                        tripDetails: TripDtls(
                            destinationAdress: 'Refiki',
                            pickUpAdress: 'JAKARTA',
                            tripNumber: '215641818T'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
