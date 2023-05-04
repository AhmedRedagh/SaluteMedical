import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:salute_medical/views/custom_widgets/components/components.dart';
import 'package:salute_medical/views/screens/stepper_screens/signature_show_screen.dart';
import 'package:signature/signature.dart';

class SignatureScreen extends StatefulWidget {
  const SignatureScreen({super.key});

  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
  Uint8List? signature;
  @override
  Widget build(BuildContext context) {
    final SignatureController controller = SignatureController(
      penStrokeWidth: 5,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
    void getSignature() async {
      if (controller.isNotEmpty) {
        final Uint8List? data = await controller.toPngBytes();
        if (data != null) {
          signature = data;
        }
      }
    }

    return Column(
      children: <Widget>[
        //SIGNATURE CANVAS
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
          child: Signature(
            controller: controller,
            backgroundColor: Colors.white,
            height: MediaQuery.of(context).size.height - 200,
          ),
        ),
        //OK AND CLEAR BUTTONS
        Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              //SHOW EXPORTED IMAGE IN NEW ROUTE
              IconButton(
                icon: const Icon(Icons.check),
                color: Colors.red.shade900,
                onPressed: () {
                  getSignature();
                  if (signature != null) {
                    NavigationUsage.navigateTo(
                        context, SignatureShow(data: signature));
                  }
                },
              ),
              //CLEAR CANVAS
              IconButton(
                icon: const Icon(Icons.clear),
                color: Colors.red.shade900,
                onPressed: () {
                  setState(() => controller.clear());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
