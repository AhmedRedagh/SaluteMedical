import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/layout_cubit/layout_cubit.dart';
import 'package:salute_medical/bloc/register_cubit/register_cubit.dart';
import 'package:salute_medical/bloc/welcome_cubit/welcome_cubit.dart';
import 'package:salute_medical/views/screens/splash_screen/splash_screen.dart';

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
        BlocProvider<LayoutCubit>(
          create: (context) => LayoutCubit(),
        ),
        BlocProvider<WelcomeCubit>(
          create: (context) => WelcomeCubit(),
        ),
        BlocProvider<RegisterCubit>(
          create: (context) => RegisterCubit(),
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
                appBarTheme: const AppBarTheme(
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark))),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
