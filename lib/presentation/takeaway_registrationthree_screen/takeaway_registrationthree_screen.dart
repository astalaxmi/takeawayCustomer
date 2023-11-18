import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_search_view.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TakeawayRegistrationthreeScreen extends StatelessWidget {
  TakeawayRegistrationthreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController logoController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 375.h,
            child: Column(
              children: [
                SizedBox(height: 47.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 32.h,
                        bottom: 18.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_take_away".tr,
                              style: CustomTextStyles
                                  .titleLargePoppinsOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "msg_create_an_account".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 18.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 76.adaptSize,
                              width: 76.adaptSize,
                              padding: EdgeInsets.all(18.h),
                              decoration:
                                  AppDecoration.fillOnPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder38,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgProfile,
                                height: 36.v,
                                width: 38.h,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_your_name".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainerLight15,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_xxxxxx".tr,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_phone_number".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainerLight15,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildLogo(context),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_e_mail".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainerLight15,
                            ),
                          ),
                          SizedBox(height: 19.v),
                          _buildEmailField(context),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_password".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainerLight15,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildPasswordField(context),
                          SizedBox(height: 56.v),
                          _buildSignUpButton(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_already_have_an2".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsOnPrimaryContainerLight,
                                  ),
                                  TextSpan(
                                    text: "lbl_sign_in".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
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
    );
  }

  /// Section Widget
  Widget _buildLogo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: logoController,
        hintText: "lbl_5555555555".tr,
        prefix: Container(
          margin: EdgeInsets.only(
            left: 5.h,
            right: 22.h,
            bottom: 14.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 22.v,
            width: 17.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 37.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "msg_order_takeaway_com".tr,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(3.h, 2.v, 19.h, 15.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMail,
            height: 15.v,
            width: 23.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 32.v,
        ),
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "lbl".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.only(
            left: 4.h,
            right: 21.h,
            bottom: 13.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 26.v,
            width: 19.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 39.v,
        ),
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_s_gn_up".tr,
      buttonTextStyle: CustomTextStyles.bodyLargeOnSecondaryContainer,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.takeawayRegistrationfourScreen);
      },
    );
  }
}
