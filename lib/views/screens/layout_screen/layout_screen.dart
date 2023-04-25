
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/layout_cubit/layout_cubit.dart';
import 'package:salute_medical/bloc/layout_cubit/layout_states.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/constant/path_route_name.dart';



class LayoutScreen extends StatelessWidget {
  static const String routeName = PathRouteName.bottomNavigationBar;
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder: (context, states) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: cubit.screens[cubit.currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: TColor.white,
            showSelectedLabels: false,
            selectedItemColor: TColor.meanColor,
            unselectedItemColor: TColor.unselectBottomNavigation,
            selectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp),
                label: ""

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                  label: ""
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                  label: ""
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "",
              ),
            ],
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavigationBar(index);
            },
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
