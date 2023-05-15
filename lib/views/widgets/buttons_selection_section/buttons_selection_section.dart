// ignore_for_file: unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';

class RequestsButtons extends StatefulWidget {
  const RequestsButtons({super.key});

  @override
  State<RequestsButtons> createState() => _RequestsButtonsState();
}

class _RequestsButtonsState extends State<RequestsButtons> {
  @override
  Widget build(BuildContext context) {
    List<String> btnNames = ['ALL', 'Approval', 'Refused'];

    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: double.infinity, maxHeight: 50),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Center(
            child: CustomButton(
              onTap: () {
                setState(() {
                  UserRequestsCubit.get(context).selectedIndex = index;
                  UserRequestsCubit.get(context).changeColor();
                });
              },
              text: btnNames[index],
              textColor: Colors.black,
              borderColor: Colors.black,
              bgColor: UserRequestsCubit.get(context).selectedIndex == index
                  ? const Color.fromARGB(255, 227, 130, 102)
                  : Colors.white,
              width: 100,
              radius: 50,
              height: 40,
              fontSize: 18,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Sbox(
            w: 15,
          );
        },
      ),
    );
  }
}
