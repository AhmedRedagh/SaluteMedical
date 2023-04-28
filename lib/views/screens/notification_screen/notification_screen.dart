import 'package:flutter/material.dart';

import 'package:salute_medical/views/widgets/app_bar_widget.dart';
import 'package:salute_medical/views/widgets/notifications_widgets/notification_item_builder_w.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarW(context: context, name: 'Notifications'),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: ListView.separated(
            itemCount: 15,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
            itemBuilder: (context, index) {
              return const NotifyItemBuilder();
            },
          ),
        ));
  }
}
