import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_cubit.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_states.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/views/custom_widgets/components/custom_circle_avatar.dart';

import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({super.key});
  static int stepIndex = 0;

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    List numbers = [1, 2, 3, 4, 5];
    int stepIndex = TripCubit.get(context).stepIndex;

    return BlocConsumer<TripCubit, TripStates>(
      builder: (context, state) => Scaffold(
        appBar: appBarW(
            context: context, name: 'Trip Number : ${TripDtls().tripNumber}'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                  ),
                  height: 55,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return NumberCircleItem(
                        number: numbers[index],
                        color: index == TripCubit.get(context).stepIndex
                            ? const Color.fromARGB(255, 227, 130, 102)
                            : Colors.white,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                        height: 1,
                        width: 30,
                        child: Center(
                          child: DottedLine(
                            dashColor: Colors.red,
                          ),
                        )),
                  ),
                ),
                TripCubit.get(context).stepperScreens[stepIndex]
              ],
            ),
          ),
        ),
      ),
      listener: (context, state) {
        if (state is! IntialTripState) {
          setState(() {});
        }
      },
    );
  }

  Widget stepperScreen(stepperScreens, stepIndex) {
    setState(() {});
    return stepperScreens[stepIndex];
  }
}
