import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_radio_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../app_food4_checkout_screen/app_food4_checkout_screen.dart';

class AppFood3CheckoutScreen extends StatelessWidget {
  AppFood3CheckoutScreen({Key? key})
      : super(
          key: key,
        );

  String xxxx = "";

  List<String> radioList = ["lbl_now", "lbl_define_hour"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          title: GestureDetector(
            onTap: () {
//              Navigator.push(context, SizeTransition4(SearchPage()));
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (_) => const SearchPage()));
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 45,
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'TakeAway.com....',
                              style:
                                  CustomTextStyles.titleSmallPoppinsBluegray800,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  size: 15,
                                  color: Color(0XFF0274BC),
                                )),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          actions: [
            // Navigate to the Search Screen

            IconButton(
              icon: const Icon(
                Icons.notification_add,
                size: 25,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 14.v),
                      Center(
                        child: Text(
                          "lbl_checkout".tr,
                          style: CustomTextStyles.titleLargeRobotoGray10002,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Column(
                        children: [
                          _buildSeitanSteak(context),
                          SizedBox(height: 20.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.fillOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "lbl2".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  Container(
                                    width: 75.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillGray10002.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12,
                                    ),
                                    child: Text(
                                      "lbl_12_00".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 27.v),
                          _buildNow(context),
                          SizedBox(height: 16.v),
                          _buildNotification(context),
                          SizedBox(height: 23.v),
                          _buildPaymentMethod(context),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            height: 41.v,
                            width: 141.h,
                            text: "lbl_order_id".tr,
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const AppFood4CheckoutScreen()),
                              );
                            },
                            buttonStyle: CustomButtonStyles.fillOrange,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeRobotoGray10002,
                          ),
                          SizedBox(height: 21.v),
                        ],
                      ),
                      //_buildHome(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 43.h,
        ),
        child: Row(
          children: [
            Container(
              height: 34.v,
              width: 186.h,
              margin: EdgeInsets.only(bottom: 4.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeitanSteak(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle32,
            height: 57.v,
            width: 60.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_seitan_steak".tr,
                    style: CustomTextStyles.bodyMediumRobotoBlack900,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Text(
                            "lbl_6_00".tr,
                            style: CustomTextStyles.bodyMediumRobotoBlack900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl_x2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 79.h,
                          margin: EdgeInsets.only(bottom: 2.v),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "lbl2".tr,
                                style: CustomTextStyles.bodyMediumBlack90015,
                              ),
                              SizedBox(
                                height: 16.v,
                                width: 52.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 16.v,
                                        width: 52.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.gray10002,
                                          borderRadius: BorderRadius.circular(
                                            8.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_12_00".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_pick_up_hour".tr,
            style: CustomTextStyles.titleLargeRoboto,
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: Row(
                  children: [
                    CustomRadioButton(
                      text: "lbl_now".tr,
                      value: radioList[0],
                      groupValue: xxxx,
                      onChange: (value) {
                        xxxx = value;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: CustomRadioButton(
                        text: "lbl_define_hour".tr,
                        value: radioList[1],
                        groupValue: xxxx,
                        onChange: (value) {
                          xxxx = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 16.v,
                              width: 50.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray10002,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "lbl_xx_xx".tr,
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPolygon1,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_notification".tr,
              style: CustomTextStyles.titleLargeRoboto,
            ),
          ),
          SizedBox(height: 4.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl_notify_me_when".tr,
                  style: CustomTextStyles.bodyMediumRobotoBlack900,
                ),
              ),
              Container(
                width: 37.h,
                margin: EdgeInsets.only(left: 4.h),
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 17.v,
                      width: 22.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 17.v,
                              width: 30.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray10002,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "lbl_xx".tr,
                                style:
                                    CustomTextStyles.bodyMediumRobotoBlack900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPolygon2,
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        top: 4.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl_minutes_left".tr,
                  style: CustomTextStyles.bodyMediumRobotoBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "lbl_payment_method".tr,
                style: CustomTextStyles.titleLargeRoboto,
              ),
            ),
            SizedBox(height: 11.v),
            Center(
              child: Text(
                "msg_pay_at_restaurant".tr,
                style: CustomTextStyles.bodyMediumRobotoBlack900,
              ),
            ),
            SizedBox(height: 9.v),
            Center(
              child: Text(
                "lbl_or".tr,
                style: CustomTextStyles.bodyMediumRobotoBlack900,
              ),
            ),
            SizedBox(height: 12.v),
            Center(
              child: Text(
                "lbl_upi".tr,
                style: CustomTextStyles.bodyMediumRobotoBlack900,
              ),
            ),
            SizedBox(height: 1.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 58.v,
            width: 82.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 6.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup3,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup3,
              height: 58.v,
              width: 82.h,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 58.v,
            width: 84.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 11.v,
              bottom: 5.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup4,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup4,
              height: 58.v,
              width: 84.h,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 64.v,
            width: 71.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 11.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2,
              height: 64.v,
              width: 71.h,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 66.v,
            width: 67.h,
            margin: EdgeInsets.only(
              left: 22.h,
              bottom: 9.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup1,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1,
              height: 66.v,
              width: 67.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
