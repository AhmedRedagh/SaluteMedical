import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:salute_medical/views/widgets/license_show_card/license_card_builder.dart';

class DocumentsShowScreen extends StatelessWidget {
  const DocumentsShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child:  SingleChildScrollView(
          child: Column(
            children: const [
              LisenceCardBuilder(
                name: 'ID Card',
              ),
              LisenceCardBuilder(
                name: 'Driving license',
              ),
              LisenceCardBuilder(
                name: 'Car license',
              ),
              LisenceCardBuilder(
                name: 'Car Photo',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
