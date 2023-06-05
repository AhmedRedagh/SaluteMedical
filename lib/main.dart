import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_cubit.dart';
import 'package:salute_medical/bloc/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:salute_medical/bloc/get_profile_cubit/get_profile_cubit.dart';
import 'package:salute_medical/bloc/help_support_cubit/help_support_cubit.dart';
import 'package:salute_medical/bloc/layout_cubit/layout_cubit.dart';
import 'package:salute_medical/bloc/login_cubit/login_cubit.dart';
import 'package:salute_medical/bloc/register_cubit/register_cubit.dart';
import 'package:salute_medical/bloc/trip_cubit/trip_cubit.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/bloc/verification_cubit/verification_cubit.dart';
import 'package:salute_medical/views/screens/splash_screen/splash_screen.dart';
import 'package:salute_medical/views/widgets/help_and_support/help_and_support.dart';

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
        BlocProvider<RegisterCubit>(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider<DocumentsCubit>(
          create: (context) => DocumentsCubit(),
        ),
        BlocProvider<UserRequestsCubit>(
          create: (context) => UserRequestsCubit(),
        ),
        BlocProvider<TripCubit>(
          create: (context) => TripCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(),
        ),
        BlocProvider<VerificationCubit>(
            create: (context) => VerificationCubit()),
        BlocProvider<HelpSupportCubit>(
          create: (context) => HelpSupportCubit()..getHelpSupport(),
        ),
        BlocProvider<EditProfileCubit>(
          create: (context) => EditProfileCubit(),
        ),
        BlocProvider<GetProfileCubit>(create: (context) => GetProfileCubit()
            // ..getProfile(),
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
            home: const HelpSupport(),
          );
        },
      ),
    );
  }
}
