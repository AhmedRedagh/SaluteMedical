import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_states.dart';

class UserRequestsCubit extends Cubit<UserRequestsStates> {
  UserRequestsCubit() : super(RequestsIntialState());

  static UserRequestsCubit get(context) => BlocProvider.of(context);
  bool? isApproved;
  List<Color> color = [Colors.white, Colors.white, Colors.white];
  List allRequests = [];
  List approvedRequsts = [];
  List refusedRequsts = [];

  List approvalCheck({approved, index}) {
    for (var i = 0; i < color.length; i++) {
      color[index] = const Color.fromARGB(255, 227, 130, 102);
      if (i == index) {
        continue;
      }
      color[i] = Colors.white;
    }
    emit(ColorChangeState());
    if (approved == true) {
      isApproved = true;
      emit(ApprovedRequestsState());
      return approvedRequsts;
    } else if (approved == false) {
      isApproved = false;
      emit(RefusedRequestsState());

      return refusedRequsts;
    } else {
      emit(AllRequestsState());
      return allRequests;
    }
  }
}
