import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppTheatre2FoodItemsScreen extends StatelessWidget {
  const AppTheatre2FoodItemsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Column(
                      children: [
                        _buildSearchBar(context),
                        SizedBox(height: 9.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_theatre".tr,
                                style: CustomTextStyles
                                    .headlineLargePoppinsGray5001_1,
                              ),
                              TextSpan(
                                text: "lbl_pvr_cinemas".tr,
                                style: CustomTextStyles
                                    .headlineLargePoppinsGray5001Bold,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 31.v),
                        _buildWidgetRow(context),
                        SizedBox(height: 1.v),
                        _buildPopCornRow(context),
                        SizedBox(height: 10.v),
                        _buildCocaColaRow(context),
                        SizedBox(height: 1.v),
                        _buildUserRow(context),
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
  Widget _buildSearchBar(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 50.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 34.v,
              width: 186.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 10.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "lbl_search".tr,
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle944,
            height: 128.v,
            width: 132.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle99,
            height: 128.v,
            width: 132.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopCornRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 49.v,
            width: 107.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_pop_corn".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 19.h,
                      top: 27.v,
                      right: 19.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl2".tr,
                          style: CustomTextStyles.bodyMediumBlack90015,
                        ),
                        Container(
                          height: 16.v,
                          width: 45.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 16.v,
                                  width: 45.h,
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
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.v),
                    child: SizedBox(
                      width: 11.h,
                      child: Divider(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 25.v,
            width: 18.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 27.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 19.v,
                    width: 18.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                    decoration: BoxDecoration(
                      color: appTheme.orange700,
                      borderRadius: BorderRadius.circular(
                        9.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_13".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 17.v,
            width: 11.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 33.v,
              bottom: 4.v,
            ),
          ),
          Container(
            height: 55.v,
            width: 143.h,
            margin: EdgeInsets.only(left: 30.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_coca_cola".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 28.v,
                      right: 67.h,
                      bottom: 4.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl2".tr,
                          style: CustomTextStyles.bodyMediumBlack90015,
                        ),
                        Container(
                          height: 17.v,
                          width: 50.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
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
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            bottom: 7.v,
                          ),
                          child: SizedBox(
                            width: 11.h,
                            child: Divider(),
                          ),
                        ),
                        Container(
                          height: 19.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 6.h),
                          decoration: BoxDecoration(
                            color: appTheme.orange700,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 17.v,
                          width: 11.h,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 29.h),
                    child: Text(
                      "lbl_13".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCocaColaRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle944,
                height: 128.v,
                width: 132.h,
                margin: EdgeInsets.only(left: 7.h),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 56.v,
                      width: 105.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_pop_corn".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 17.h,
                                top: 34.v,
                                right: 20.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBlack90015,
                                  ),
                                  Container(
                                    height: 16.v,
                                    width: 45.h,
                                    margin: EdgeInsets.only(left: 6.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 16.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray10002,
                                              borderRadius:
                                                  BorderRadius.circular(
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
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.v),
                              child: SizedBox(
                                width: 11.h,
                                child: Divider(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24.v,
                      width: 18.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 30.v,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 19.v,
                              width: 18.h,
                              margin: EdgeInsets.only(bottom: 2.v),
                              decoration: BoxDecoration(
                                color: appTheme.orange700,
                                borderRadius: BorderRadius.circular(
                                  9.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_13".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                      height: 17.v,
                      width: 11.h,
                      margin: EdgeInsets.only(
                        left: 11.h,
                        top: 36.v,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle944,
                height: 128.v,
                width: 132.h,
                margin: EdgeInsets.only(left: 7.h),
              ),
              SizedBox(height: 2.v),
              Text(
                "lbl_pop_corn".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 187.v,
                  width: 143.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle99,
                        height: 128.v,
                        width: 132.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Text(
                            "lbl_coca_cola".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 160.v,
                            right: 67.h,
                            bottom: 4.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl2".tr,
                                style: CustomTextStyles.bodyMediumBlack90015,
                              ),
                              Container(
                                height: 17.v,
                                width: 50.h,
                                margin: EdgeInsets.only(left: 6.h),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
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
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 11.v,
                                  bottom: 7.v,
                                ),
                                child: SizedBox(
                                  width: 11.h,
                                  child: Divider(),
                                ),
                              ),
                              Container(
                                height: 19.v,
                                width: 18.h,
                                margin: EdgeInsets.only(left: 6.h),
                                decoration: BoxDecoration(
                                  color: appTheme.orange700,
                                  borderRadius: BorderRadius.circular(
                                    9.h,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 17.v,
                                width: 11.h,
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  top: 2.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 29.h),
                          child: Text(
                            "lbl_13".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle99,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_coca_cola".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 68.h,
                        margin: EdgeInsets.only(top: 3.v),
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
                              width: 45.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 16.v,
                                      width: 45.h,
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
                      Padding(
                        padding: EdgeInsets.only(
                          top: 14.v,
                          bottom: 10.v,
                        ),
                        child: SizedBox(
                          width: 20.h,
                          child: Divider(
                            indent: 9.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 25.v,
                        width: 18.h,
                        margin: EdgeInsets.only(left: 6.h),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 19.v,
                                width: 18.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                                decoration: BoxDecoration(
                                  color: appTheme.orange700,
                                  borderRadius: BorderRadius.circular(
                                    9.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "lbl_13".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                        height: 17.v,
                        width: 11.h,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          top: 5.v,
                          bottom: 2.v,
                        ),
                      ),
                      Container(
                        width: 76.h,
                        margin: EdgeInsets.only(left: 30.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl2".tr,
                              style: CustomTextStyles.bodyMediumBlack90015,
                            ),
                            Container(
                              height: 17.v,
                              width: 50.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
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
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 58.v,
                        width: 82.h,
                        margin: EdgeInsets.only(bottom: 6.v),
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
                        margin: EdgeInsets.only(left: 10.h),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 89.v,
            width: 67.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 3.v,
              bottom: 9.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 66.v,
                    width: 67.h,
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
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            bottom: 7.v,
                          ),
                          child: SizedBox(
                            width: 11.h,
                            child: Divider(),
                          ),
                        ),
                        Container(
                          height: 19.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 6.h),
                          decoration: BoxDecoration(
                            color: appTheme.orange700,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 17.v,
                          width: 11.h,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Text(
                      "lbl_13".tr,
                      style: theme.textTheme.titleLarge,
                    ),
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
