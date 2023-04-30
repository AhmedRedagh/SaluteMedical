import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/views/screens/home_screen/home_screen.dart';
import 'package:salute_medical/views/screens/notification_screen/notification_screen.dart';
import 'package:salute_medical/views/screens/profile_screen/profile_screen.dart';
import 'package:salute_medical/views/screens/user_requests_screen/user_requests_screen.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int tab = 0;

  List<Widget> screens = const [
    HomeScreen(),
    NotificationScreen(),
    UserRequestsScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavigationBar(index) {
    currentIndex = index;
    emit(LayoutBottomNavigationBar());
  }

  void changeTabBar(index) {
    tab = index;
    emit(LayoutTabBar());
  }
}
