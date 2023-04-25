import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/layout_cubit/layout_cubit.dart';
import 'package:salute_medical/views/screens/layout_screen/layout_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, states) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'salute medical',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const  LayoutScreen(),
          );
        },
      ),
    );
  }
}
