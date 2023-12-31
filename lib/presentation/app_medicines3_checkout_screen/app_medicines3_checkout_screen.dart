import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppMedicines3CheckoutScreen extends StatelessWidget {
  AppMedicines3CheckoutScreen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Column(
                      children: [
                        _buildSearchView(context),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 102.h),
                            child: Text(
                              "lbl_checkout".tr,
                              style: CustomTextStyles.headlineSmallGray50,
                            ),
                          ),
                        ),
                        SizedBox(height: 46.v),
                        _buildParacetamolRow(context),
                        SizedBox(height: 73.v),
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
                                  margin: EdgeInsets.only(left: 10.h),
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
                        _buildNowColumn(context),
                        SizedBox(height: 16.v),
                        _buildNotificationColumn(context),
                        SizedBox(height: 23.v),
                        _buildPaymentMethodColumn(context),
                        SizedBox(height: 12.v),
                        CustomElevatedButton(
                          height: 41.v,
                          width: 141.h,
                          text: "lbl_order_id".tr,
                          buttonStyle: CustomButtonStyles.fillOrange,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeRobotoGray10002,
                        ),
                        SizedBox(height: 21.v),
                        _buildHomeRow(context),
                      ],
                    ),
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
  Widget _buildSearchView(BuildContext context) {
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
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "lbl_search".tr,
                style: CustomTextStyles.headlineLargeInter,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildParacetamolRow(BuildContext context) {
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
            imagePath: ImageConstant.imgRectangle321,
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
                    "lbl_paracetmal".tr,
                    style: CustomTextStyles.bodyLargeRobotoBlack900,
                  ),
                  SizedBox(height: 7.v),
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
  Widget _buildNowColumn(BuildContext context) {
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
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
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
                        padding: EdgeInsets.only(left: 56.h),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 17.v,
                        width: 50.h,
                        child: Stack(
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
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationColumn(BuildContext context) {
    return Container(
      width: 340.h,
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 50.h,
        vertical: 1.v,
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
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: Row(
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
                                width: 22.h,
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
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.h,
        right: 7.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 92.h),
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_payment_method".tr,
            style: CustomTextStyles.titleLargeRoboto,
          ),
          SizedBox(height: 11.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_pay_at".tr,
                  style: CustomTextStyles.titleLargeRobotoSecondaryContainer,
                ),
                TextSpan(
                  text: "lbl_pharmacy2".tr,
                  style:
                      CustomTextStyles.titleLargeRobotoSecondaryContainerBold,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.v),
          Container(
            margin: EdgeInsets.only(left: 48.h),
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_or".tr,
              style: CustomTextStyles.titleLargeRobotoSecondaryContainer_1,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 48.h),
            child: Text(
              "lbl_upi".tr,
              style: CustomTextStyles.titleLargeRobotoSecondaryContainer_1,
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
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
