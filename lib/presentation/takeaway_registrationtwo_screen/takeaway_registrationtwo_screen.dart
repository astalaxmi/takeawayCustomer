import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class TakeawayRegistrationtwoScreen extends StatelessWidget {
  const TakeawayRegistrationtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 70.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildTakeawayRegistrationTwo(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTakeawayRegistrationTwo(BuildContext context) {
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
          SizedBox(height: 110.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder35,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_enter_your_otp_code".tr,
                      style: CustomTextStyles.bodyMediumPoppinsGray600,
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 5.h,
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: PinputExample(),
                  ),
                ),
                SizedBox(height: 27.v),
                CustomElevatedButton(
                  height: 43.v,
                  text: "lbl_next".tr,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.takeawayRegistrationthreeScreen);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCopyThree(
    BuildContext context, {
    required String userName,
  }) {
    return SizedBox(
      height: 26.v,
      width: 39.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              userName,
              style:
                  CustomTextStyles.titleLargePoppinsPrimaryContainer.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLinePrimary,
            height: 1.v,
            width: 39.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black), // Change color if needed
        ), // Change color if needed
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border(
                    bottom: BorderSide(
                        color: focusedBorderColor), // Change color if needed
                  ),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  border: Border(
                    bottom: BorderSide(
                        color: focusedBorderColor), // Change color if needed
                  ),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.redAccent), // Change color if needed
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              focusNode.unfocus();
              formKey.currentState!.validate();
            },
            child: const Text('Validate'),
          ),
        ],
      ),
    );
  }
}
