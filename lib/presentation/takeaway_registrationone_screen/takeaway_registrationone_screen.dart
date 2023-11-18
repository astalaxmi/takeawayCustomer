import 'package:country_picker/country_picker.dart';
import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart'; // Import the correct package

class TakeawayRegistrationoneScreen extends StatelessWidget {
  TakeawayRegistrationoneScreen({Key? key})
      : super(
          key: key,
        );

  //late Country selectedCountry ;
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 70.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildTakeawayRegistrationOne(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTakeawayRegistrationOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 14.h,
        bottom: 351.v,
      ),
      child: Column(
        children: [
          Text(
            "lbl_take_away".tr,
            style: CustomTextStyles.titleLargePoppinsOnPrimaryContainer,
          ),
          SizedBox(height: 5.v),
          Text(
            "msg_create_an_account".tr,
            style: CustomTextStyles.bodyMediumPoppinsOnPrimaryContainer,
          ),
          SizedBox(height: 50.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 34.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder35,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_otp_authentication".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray600,
                  ),
                ),
                SizedBox(height: 18.v),
                Column(
                  children: [
                    CustomPhoneNumber(
                      controller: phoneNumberController,
                    ),
                  ],
                ),
                SizedBox(height: 47.v),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.takeawayRegistrationtwoScreen);
                  },
                  child: CustomElevatedButton(
                    text: "lbl_next".tr,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.takeawayRegistrationtwoScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
