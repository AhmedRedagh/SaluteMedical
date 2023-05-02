import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:salute_medical/views/custom_widgets/components/custom_circle_avatar.dart';

class NumberStepper extends StatelessWidget {
  const NumberStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: const [
                NumberCircleItem(
                  number: 1,
                  color: Color.fromARGB(255, 227, 130, 102),
                ),
                Expanded(
                    child: DottedLine(
                  dashColor: Colors.red,
                )),
                NumberCircleItem(
                  number: 2,
                ),
                Expanded(
                    child: DottedLine(
                  dashColor: Colors.red,
                )),
                NumberCircleItem(
                  number: 3,
                ),
                Expanded(
                    child: DottedLine(
                  dashColor: Colors.red,
                )),
                NumberCircleItem(
                  number: 4,
                ),
                Expanded(
                    child: DottedLine(
                  dashColor: Colors.red,
                )),
                NumberCircleItem(
                  number: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
