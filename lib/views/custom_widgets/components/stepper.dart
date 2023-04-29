// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

import 'stepper.dart';

class NumberSteppers extends StatefulWidget {
  const NumberSteppers({super.key});

  @override
  NumberStageStepper createState() => NumberStageStepper();
}

class NumberStageStepper extends State<NumberSteppers> {
  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  int activeStep = 1; // Initial step set to 5.

  int upperBound = 6; // upperBound MUST BE total number of icons minus 1.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(
        name: 'Number Stepper',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            NumberStepper(
              numbers: const [1, 2, 3, 4, 5, 6, 7],
              // activeStep property set to activeStep variable defined above.
              activeStep: activeStep,
              lineColor: Colors.red,
              activeStepColor: const Color.fromARGB(255, 227, 130, 102),
              // This ensures step-tapping updates the activeStep.
              onStepReached: (index) {
                setState(() {
                  activeStep = index;
                });
              },
            ),
            Expanded(
              child: FittedBox(
                child: Center(
                  child: Text('$activeStep'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                previousButton(),
                nextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the next button.
  Widget nextButton() {
    return ElevatedButton(
      onPressed: () {
        // Increment activeStep, when the next button is tapped. However, check for upper bound.
        if (activeStep < upperBound) {
          setState(() {
            activeStep++;
          });
        }
      },
      child: const Text('Next'),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
      child: const Text('Prev'),
    );
  }

  /// Returns the header wrapping the header text.

  // Returns the header text based on the activeStep.
}
