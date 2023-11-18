import 'package:country_picker/src/country.dart';
import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatefulWidget {
  CustomPhoneNumber({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  TextEditingController? controller;

  @override
  State<CustomPhoneNumber> createState() => _CustomPhoneNumberState();
}

class _CustomPhoneNumberState extends State<CustomPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: IntlPhoneField(
                decoration: InputDecoration(
                  hintText: "lbl_5555555555".tr,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: appTheme.black900,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: appTheme.black900,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                languageCode: "en",
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                style: TextStyle(color: Colors.black),
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
