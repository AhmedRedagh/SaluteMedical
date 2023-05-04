import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class RequestDateSection extends StatelessWidget {
  const RequestDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          text: DateFormat.yMMMd().format(DateTime.now()),
          overflow: TextOverflow.ellipsis,
          color: Colors.grey,
          fontSize: 20,
          maxLine: 1,
        ),
        const Sbox(w: 25),
        Expanded(
          child: CustomText(
            text: DateFormat.j().format(DateTime.now()),
            overflow: TextOverflow.ellipsis,
            color: Colors.grey,
            fontSize: 20,
            maxLine: 1,
          ),
        ),
      ],
    );
  }
}
