import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_states.dart';

class UserRequestsCubit extends Cubit<UserRequestsStates> {
  UserRequestsCubit() : super(RequestsIntialState());

  static UserRequestsCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;
  void changeColor() {
    emit(ColorChangeState());
  }
}

class TripDtls {
  TripDtls({this.destinationAdress, this.tripNumber, this.pickUpAdress});
  String? tripNumber;
  String? pickUpAdress;
  String? destinationAdress;
}
