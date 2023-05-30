import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({super.key});

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  final codePicker = const FlCountryCodePicker();
  String? countryCode;
  Widget? flag;

  @override
  void initState() {
    flag = Image.asset(
      width: 20,
      fit: BoxFit.contain,
      'assets/flags/eg.png',
      package: 'fl_country_code_picker',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
              maxHeight: double.maxFinite, maxWidth: double.maxFinite),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                margin: const EdgeInsets.only(left: 15),
                height: 30,
                width: 30,
                child: flag),
            InkWell(
              onTap: () async {
                final code = await codePicker.showPicker(
                  context: context,
                );
                setState(() {
                  countryCode = code!.dialCode;

                  flag = code.flagImage;
                });
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black),
                child: Text(
                  countryCode != null ? '$countryCode' : '+20',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
