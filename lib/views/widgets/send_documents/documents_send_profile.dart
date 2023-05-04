import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';

class SendDocumentsCard extends StatelessWidget {
  final String? name;
  const SendDocumentsCard({Key? key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: name,
              fontSize: 25,
              fontW: FontWeight.bold,
            ),
            SizedBox(
              width: double.infinity,
              height: 100.w,
              child: Image.asset("assets/images/ic card.png"),
            )
          ],
        ),
      ),
    );
  }
}
