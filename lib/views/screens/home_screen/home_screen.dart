import 'package:flutter/material.dart';
import 'package:salute_medical/bloc/user_requests_bloc/user_requests_cubit.dart';
import 'package:salute_medical/utils/sized_box.dart';
import 'package:salute_medical/views/custom_widgets/custom_button.dart';
import 'package:salute_medical/views/custom_widgets/custom_text.dart';
import 'package:salute_medical/views/widgets/home_widgets/request_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TripDtls trip = TripDtls(
      tripNumber: '433391068T',
      pickUpAdress: 'JAKARTA',
      destinationAdress: 'RIFKI ARBA',
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo section//
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  scale: 2,
                ),
              ),
              const Sbox(h: 10),
              //button section
              const Center(
                child: CustomText(
                  text: 'Welcome Back',
                  fontSize: 35,
                  fontW: FontWeight.bold,
                ),
              ),
              const Sbox(h: 30),

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
              ),
              const Sbox(
                h: 6,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 15,
                  separatorBuilder: (context, index) => const Sbox(
                    h: 10.0,
                  ),
                  itemBuilder: (context, index) {
                    return RequestCard(
                      tripDetails: trip,
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
