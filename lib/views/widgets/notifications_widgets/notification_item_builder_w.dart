import 'package:flutter/material.dart';

import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';

import 'notification_item_details.dart';

class NotifyItemBuilder extends StatelessWidget {
  const NotifyItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: const [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: TColor.prim,
          child: Icon(Icons.mail_outline_sharp, color: Colors.white),
        ),
        Sbox(
          w: 15.0,
        ),
        Expanded(child: NotifyItemDetails()),
      ],
    );
  }
}
