import 'package:country_picker/country_picker.dart';
import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/CustomSizer/CustomSizer.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart'; // Import the correct package

class OtpAuthScreen extends StatelessWidget {
  OtpAuthScreen({Key? key})
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 375.h,
            child: Column(
              children: [
                SizedBox(height: 70.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: _buildOtpAuthUi(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpAuthUi(BuildContext context) {
    return Column(
      children: [
        AppText(
          "lbl_take_away",
          style: CustomTextStyles.titleLargePoppinsOnPrimaryContainer,
        ),
        SizedBox(
          height: AppSize.height(context, 2),
        ),
        // SizedBox(height: 5.v),
        AppText(
          "msg_create_an_account",
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
                child: AppText(
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
    );
  }
}
