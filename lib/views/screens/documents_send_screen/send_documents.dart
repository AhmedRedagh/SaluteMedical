import 'package:flutter/material.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';
import 'package:salute_medical/views/widgets/send_documents/documents_send_profile.dart';

class SendDocuments extends StatelessWidget {
  const SendDocuments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(name: 'Send Documents'),
      body:  Column(
        children: const  [
          SendDocumentsCard(
            name: 'ID Card',
          ),
          SendDocumentsCard(
            name: 'Drive Licence',
          ),
          SendDocumentsCard(
            name: 'Car Licence',
          ),
        ],
      ),
    );
  }
}
