import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TakeawayRegistrationfiveScreen extends StatelessWidget {
  TakeawayRegistrationfiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                SizedBox(height: 34.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 14.h,
                        bottom: 37.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfilePrimary,
                            height: 57.v,
                            width: 59.h,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_take_away".tr,
                            style: CustomTextStyles
                                .titleLargePoppinsOnPrimaryContainer,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "msg_create_an_account".tr,
                            style: CustomTextStyles.bodyMediumPoppinsGray200,
                          ),
                          SizedBox(height: 27.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 30.v,
                            ),
                            decoration:
                                AppDecoration.fillOnPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder35,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_your_name".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsGray600,
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                _buildName(context),
                                SizedBox(height: 36.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_e_mail".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsGray600,
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                _buildEmail(context),
                                SizedBox(height: 36.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_password".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsGray600,
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                _buildPassword(context),
                                SizedBox(height: 59.v),
                                _buildSgnUp(context),
                                SizedBox(height: 17.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPoppinsGray900,
                                      ),
                                      TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnSecondaryContainerSemiBold,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 21.v),
                              ],
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
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "lbl_xxxxxx".tr,
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
          height: 16.v,
          width: 24.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 36.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 4.v),
      borderDecoration: TextFormFieldStyleHelper.underLineGreen,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "msg_order_takeaway_com".tr,
      hintStyle: theme.textTheme.titleSmall!,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(3.h, 2.v, 19.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgMailPrimarycontainer,
          height: 15.v,
          width: 23.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 32.v,
      ),
      contentPadding: EdgeInsets.only(right: 30.h),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "lbl".tr,
      hintStyle: theme.textTheme.titleSmall!,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
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
        maxHeight: 39.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSgnUp(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_s_gn_up".tr,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.takeawayRegistrationsixScreen);
      },
    );
  }
}
