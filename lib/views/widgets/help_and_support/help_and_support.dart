import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/app_bar_widget.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarW(
        name: "help and Support"
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Sbox(
                h: 10,
              ),
              CustomText(
                text:"Help and Support ",
                fontSize: 40,
                fontW: FontWeight.w900,
              ),
              Sbox(
                h: 50,
              ),
              CustomText(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sollicitudin gravida tellus eget posuere. Cras non sollicitudin nunc, in hendrerit leo. Sed venenatis mauris lorem, non facilisis dolor vestibulum ut. Cras id diam non velit feugiat porttitor quis at orci. Integer tempor, lorem id mattis volutpat, massa dolor iaculis mi, non dignissim ligula nunc ac urna. Phasellus sit amet faucibus nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus consectetur ac massa in porta. Quisque fermentum in mauris id tincidunt. Proin quis arcu non magna fringilla imperdiet. Nunc vehicula dapibus turpis, eget mollis nunc volutpat euismod. Maecenas at mi metus. Ut ullamcorper, quam elementum tempor malesuada, eros ex tincidunt ex, rhoncus vestibulum mi turpis in magna. Duis vitae elit erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam in magna nisl",



                maxLine: 50,
                fontW: FontWeight.bold,
                fontSize: 20,
                textAlign: TextAlign.center,
                color: TColor.grey,
              )
            ],
          ),
        ),
      ),
    );

  }
}
