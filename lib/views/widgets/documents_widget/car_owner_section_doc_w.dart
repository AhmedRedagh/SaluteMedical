import 'package:flutter/material.dart';
import 'package:salute_medical/bloc/documents_cubit/documents_cubit.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class CarOwnerSection extends StatefulWidget {
  const CarOwnerSection({super.key});

  @override
  State<CarOwnerSection> createState() => _CarOwnerSectionState();
}

class _CarOwnerSectionState extends State<CarOwnerSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              checkColor: Colors.white,
              value: DocumentsCubit.get(context).carOwner,
              onChanged: (value) => {
                    setState(
                      () {
                        DocumentsCubit.get(context).carOwner = value!;
                        DocumentsCubit.get(context).isCarOwner();
                      },
                    )
                  }
              //DocumentsCubit.get(context).isCarOwner(value),
              ,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                return Colors.black;
              })),
          const CustomText(
            text: 'Have a car ?',
            fontSize: 18,
            fontW: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
