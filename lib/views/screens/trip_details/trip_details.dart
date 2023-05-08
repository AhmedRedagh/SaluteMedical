import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_cubit.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_states.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/custom_widgets/components/custom_circle_avatar.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

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
      builder: (context, state) => WillPopScope(
        onWillPop: () async {
          if (stepIndex == 0) {
            return true;
          } else {
            TripCubit.get(context).stepIndex--;
            setState(() {});
            return false;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => {
                if (stepIndex == 0)
                  {NavigationUsage.getBack(context)}
                else
                  {TripCubit.get(context).stepIndex--, setState(() {})}
              },
              icon: const Icon(Icons.arrow_back_ios_new_sharp),
              color: Colors.black,
            ),
            title: const CustomText(
              text: 'Trip Details',
              color: Colors.black,
              fontW: FontWeight.bold,
              fontSize: 20,
            ),
            centerTitle: true,
            elevation: 0.5,
          ),
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
