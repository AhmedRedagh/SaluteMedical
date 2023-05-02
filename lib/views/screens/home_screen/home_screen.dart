import 'package:flutter/material.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: Column(
            children: [
              //logo section//
              Image.asset(
                'assets/images/logo.png',
                scale: 2,
              ),
              const Sbox(h: 10),
              //button section
              const CustomText(
                text: 'Welcome Back',
                fontSize: 35,
                fontW: FontWeight.bold,
              ),
              const Sbox(h: 30),

              Row(children: [
                CustomButton(
                  bgColor: Colors.white,
                  text: 'All Requests',
                  fontSize: 18,
                  borderColor: const Color.fromARGB(200, 89, 138, 233),
                  textColor: Colors.black,
                  onTap: () {},
                  width: 150,
                  radius: 50,
                  height: 40,
                )
              ]),

              Expanded(
                child: ListView.separated(
                  itemCount: 15,
                  separatorBuilder: (context, index) => const Sbox(
                    h: 10.0,
                  ),
                  itemBuilder: (context, index) {
                    return const RequestCard(
                      tripNumber: '433391068T',
                      pickUpAdress: 'JAKARTA',
                      destinationAdress: 'RIFKI ARBA',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
