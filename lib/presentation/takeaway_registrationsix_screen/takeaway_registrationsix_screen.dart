import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TakeawayRegistrationsixScreen extends StatelessWidget {
  TakeawayRegistrationsixScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberEditTextController =
      TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController forgetPasswordEditTextController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onSecondaryContainer,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              //height: 775.v,
              width: 358.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18.v),
                      decoration: AppDecoration.fillOnSecondaryContainer,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIllustration,
                        height: 221.v,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 55.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 32.h,
                          right: 17.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "msg_let_s_sign_you_in".tr,
                              style: CustomTextStyles
                                  .titleLargePoppinsOnSecondaryContainer,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "msg_welcome_back_you_ve".tr,
                              style: CustomTextStyles.bodyMediumPoppinsGray800,
                            ),
                            SizedBox(height: 82.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_mobile_number_or".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 17.v),
                            _buildMobileNumberEditText(context),
                            SizedBox(height: 36.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_password".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            _buildPassword(context),
                            SizedBox(height: 29.v),
                            _buildSignInButton(context),
                            SizedBox(height: 14.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsGray900,
                                  ),
                                  TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnSecondaryContainerSemiBold,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberEditText(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNumberEditTextController,
      hintText: "msg_order_takeaway_com".tr,
      hintStyle: theme.textTheme.titleSmall!,
      prefix: Container(
        margin: EdgeInsets.only(
          left: 3.h,
          right: 19.h,
          bottom: 13.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 23.adaptSize,
          width: 23.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 36.v,
      ),
      suffix: Container(
        margin: EdgeInsets.only(
          left: 30.h,
          top: 2.v,
          bottom: 17.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 17.v,
          width: 24.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 36.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 2.v),
      borderDecoration: TextFormFieldStyleHelper.underLineGreen,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      width: 308.h,
      controller: passwordEditTextController,
      hintText: "lbl".tr,
      hintStyle: theme.textTheme.titleSmall!,
      textInputType: TextInputType.visiblePassword,
      alignment: Alignment.center,
      prefix: Container(
        margin: EdgeInsets.only(
          left: 4.h,
          right: 21.h,
          bottom: 13.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockBlack900,
          height: 26.v,
          width: 19.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      suffix: Container(
        margin: EdgeInsets.only(
          left: 30.h,
          top: 2.v,
          bottom: 17.v,
        ),
        child: Text(
          "lbl_forget".tr,
          style: CustomTextStyles.titleSmallOnSecondaryContainer,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 36.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 308.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          _buildPasswordEditText(context),
          //_buildForgetPasswordEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_s_gn_in".tr,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.approotScreen);
      },
    );
  }
}
