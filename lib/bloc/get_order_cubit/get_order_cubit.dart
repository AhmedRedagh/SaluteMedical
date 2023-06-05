import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/get_order_cubit/get_order_states.dart';
import 'package:salute_medical/data/repo/get_Order_repo.dart';

class GetOrderCubit extends Cubit<GetOrderStates> {
  GetOrderCubit() : super(GetOrderIntialState());
  final _getOrder = GetOrderRepo();

  Future<void> getOrder() async {
    emit(GetOrderLoadingState());
    final response = await _getOrder.getOrder();
    debugPrint('=========================response is ${response.message} ');

    /// To Do =========>  check The successful request message here  <=========
    if (response.message != "No Orders Found" ||
        response.message != "Unauthenticated") {
      emit(GetOrderSuccessState());
    } else {
      debugPrint(response.toString());
      emit(GetOrderErrorState(error: response.message));
    }
  }
}
