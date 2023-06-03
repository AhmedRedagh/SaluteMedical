import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salute_medical/bloc/term_condition_cubit/term_condition_cubit.dart';
import 'package:salute_medical/bloc/term_condition_cubit/term_condition_states.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  final String? name;
  const PrivacyPolicyScreen({Key? key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(
          name: name
      ),
      body: SingleChildScrollView(
          child:BlocBuilder<TermConditionCubit , TermConditionState>(builder: ( context, states) {
            if (states is TermConditionLoadState){
              return const Center(
                  child: CircularProgressIndicator()
              );
            }else if (states is TermConditionSuccessState){
              return const  Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sbox(
                      h: 10,
                    ),
                    CustomText(
                      text:"",
                      fontSize: 30,
                      fontW: FontWeight.w900,
                    ),
                    Sbox(
                      h: 50,
                    ),
                    CustomText(
                      text: "",
                      maxLine: 50,
                      fontW: FontWeight.bold,
                      fontSize: 20,
                      textAlign: TextAlign.start,
                      color: TColor.grey,
                    )
                  ],
                ),
              );
            }else if (states is TermConditionErrorState){
              return const SizedBox();
            }else {
              return const SizedBox();
            }
          },)

      ),
    );
  }
}
