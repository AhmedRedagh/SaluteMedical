import 'package:flutter/material.dart';
import 'package:salute_medical/config/theme_colors.dart';
import 'package:salute_medical/utils/sized_box.dart';


class PhoneNoLogin extends StatelessWidget {
  const PhoneNoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              const Text(
                "Phone No.",
                style: TextStyle(
                  color: TColor.prim,
                  fontSize: 20 ,
                  fontWeight:  FontWeight.bold,
                ),
              ),
              const Sbox(h: 15,),
              Container(
                width: 60,
                height: 2,
                color: TColor.prim,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
