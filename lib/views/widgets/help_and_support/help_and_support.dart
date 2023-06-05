import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/help_support_cubit/help_support_cubit.dart';
import 'package:salute_medical/bloc/help_support_cubit/help_support_states.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class HelpSupport extends StatelessWidget {
  final String? name;

  const HelpSupport({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(name: context.watch<HelpSupportCubit>().title),
      body: SingleChildScrollView(
          child: BlocBuilder<HelpSupportCubit, HelpSupportStates>(
        builder: (context, states) {
          if (states is HelpSupportLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (states is HelpSupportSuccessState) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Sbox(
                    h: 10,
                  ),
                  CustomText(
                    text: states.helpSupportModel!.data!.title,
                    fontSize: 30,
                    fontW: FontWeight.w900,
                  ),
                  const Sbox(
                    h: 50,
                  ),
                  CustomText(
                    text: states.helpSupportModel!.data!.title,
                    maxLine: 50,
                    fontW: FontWeight.bold,
                    fontSize: 20,
                    textAlign: TextAlign.start,
                    color: TColor.grey,
                  )
                ],
              ),
            );
          } else if (states is HelpSupportErrorState) {
            return const SizedBox();
          } else {
            return const SizedBox();
          }
        },
      )),
    );
  }
}
