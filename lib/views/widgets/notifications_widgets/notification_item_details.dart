import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class NotifyItemDetails extends StatelessWidget {
  const NotifyItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Special For You, Refiki',
              color: Colors.black,
              fontW: FontWeight.bold,
              fontSize: 16,
            ),
            CustomText(
              text: '19 hours ago',
              color: Colors.grey,
            )
          ],
        ),
        const Sbox(
          h: 5.0,
        ),
        Row(
          children: [
            const Expanded(
              child: CustomText(
                text: 'Special Handling of vegetables packeges for you dear',
                overflow: TextOverflow.ellipsis,
                maxLine: 1,
              ),
            ),
            Expanded(
              child: CustomText(
                text: DateFormat.jm().format(DateTime.now()),
                color: Colors.grey,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15.0,
        )
      ],
    );
  }
}
