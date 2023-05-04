import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_states.dart';
import 'package:salute_medical/views/screens/stepper_screens/client_location_info_screen.dart';
import 'package:salute_medical/views/screens/stepper_screens/destination_location_info_screen.dart';
import 'package:salute_medical/views/screens/stepper_screens/end_trip.dart';
import 'package:salute_medical/views/screens/stepper_screens/signature_screen.dart';
import 'package:salute_medical/views/screens/stepper_screens/stepper_intial_screen.dart';

class TripCubit extends Cubit<TripStates> {
  TripCubit() : super(IntialTripState());
  static TripCubit get(context) => BlocProvider.of(context);
  int stepIndex = 0;
  bool isChanged = false;
  List stepperScreens = [
    const StepperIntialScreen(),
    const ClientLocInfoScreen(),
    const DestLocInfoScreen(),
    const EndTripScreen(),
    const SignatureScreen(),
  ];

  void stepChanger() {
    stepIndex++;
    emit(StepChangeState());
    isChanged = true;
  }
}
