import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TakeawayRegistrationfourScreen extends StatelessWidget {
  TakeawayRegistrationfourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        // resizeToAvoidBottomInset: true,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 375.h,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 774.v,
                width: 375.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10.h,
                          right: 3.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.h,
                          vertical: 1.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 120.v),
                            Text(
                              "lbl_.getting_started".tr,
                              style: CustomTextStyles
                                  .titleLargePoppinsOnSecondaryContainer,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "msg_create_an_account".tr,
                              style:
                                  CustomTextStyles.bodyMediumPoppinsGray80001,
                            ),
                            SizedBox(height: 25.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_your_name".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_xxxxxx".tr,
                                hintStyle: theme.textTheme.titleSmall!,
                                // suffix: Container(
                                //   margin: EdgeInsets.only(
                                //     left: 30.h,
                                //     right: 1.h,
                                //     bottom: 16.v,
                                //   ),
                                //   child: CustomImageView(
                                //     imagePath: ImageConstant.imgCheckmark,
                                //     height: 18.v,
                                //     width: 24.h,
                                //   ),
                                // ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 35.v,
                                ),
                                prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.h, 2.v, 19.h, 15.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 15.v,
                                    width: 23.h,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 32.v,
                                ),
                                contentPadding: EdgeInsets.only(right: 30.h),
                              ),
                            ),
                            //_buildPasswordSection(context),
                            SizedBox(height: 25.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_e_mail".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: CustomTextFormField(
                                controller: emailController,
                                hintText: "msg_order_takeaway_com".tr,
                                hintStyle: theme.textTheme.titleSmall!,
                                prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.h, 2.v, 19.h, 15.v),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMailPrimarycontainer,
                                    height: 15.v,
                                    width: 23.h,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 32.v,
                                ),
                                contentPadding: EdgeInsets.only(right: 30.h),
                              ),
                            ),
                            SizedBox(height: 25.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_password".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: CustomTextFormField(
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
                                suffix: Container(
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      right: 21.h,
                                      bottom: 13.v,
                                    ),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      size: 25,
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                            SizedBox(height: 25.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Confirm password".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: CustomTextFormField(
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
                                suffix: Container(
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      right: 21.h,
                                      bottom: 13.v,
                                    ),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      size: 25,
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                            SizedBox(height: 25.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Mobile number".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsGray600,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: CustomTextFormField(
                                controller: passwordController,
                                hintText: " +91   97822658".tr,
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
                                    imagePath: ImageConstant.imgMobile,
                                    height: 26.v,
                                    width: 19.h,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 39.v,
                                ),
                              ),
                            ),

                            SizedBox(height: 17.v),
                            CustomElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context,
                                    AppRoutes.takeawayRegistrationsixScreen);
                              },
                              text: "lbl_s_gn_up".tr,
                              margin: EdgeInsets.only(right: 7.h),
                            ),
                            SizedBox(height: 10.v),
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
                          ],
                        ),
                      ),
                    ),
                    _buildSeventySevenSection(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return SizedBox(
      height: 74.v,
      width: 309.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 45.h,
                bottom: 9.v,
              ),
              child: Text(
                "lbl_xxxxxx".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_your_name".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray600,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 23.adaptSize,
                        width: 23.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 16.v,
                        width: 24.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Divider(
                  color: appTheme.green70001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySevenSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 35.v,
        ),
        // decoration: AppDecoration.fillOnSecondaryContainer,

        decoration: BoxDecoration(
          color: theme.colorScheme.onSecondaryContainer,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfilePrimary,
                  height: 57.v,
                  width: 59.h,
                ),
                SizedBox(width: 18.v),
                Text(
                  "lbl_take_away".tr,
                  style: CustomTextStyles.titleLargePoppinsOnPrimaryContainer,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
