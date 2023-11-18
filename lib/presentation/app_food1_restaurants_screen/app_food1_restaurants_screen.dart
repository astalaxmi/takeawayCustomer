import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

class AppFood1RestaurantsScreen extends StatelessWidget {
  const AppFood1RestaurantsScreen({Key? key})
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildView(context),
                      SizedBox(height: 14.v),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_restaurant".tr,
                                style: CustomTextStyles
                                    .headlineLargePoppinsGray5001_1,
                              ),
                              TextSpan(
                                text: "lbl_a2b".tr,
                                style: CustomTextStyles
                                    .headlineLargePoppinsGray5001Bold,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildRestaurantListgrid(context),
                      SizedBox(height: 51.v),
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
  Widget _buildRestaurantListgrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h, right: 10.h),
      child: SizedBox(
        height: 506.h,
        width: MediaQuery.sizeOf(context).width,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Set the number of items in each row
            crossAxisSpacing:
                10.0, // Set the spacing between items horizontally
            mainAxisSpacing: 10.0, // Set the spacing between items vertically
          ),
          itemCount: 8, // Set the total number of items
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildSeventeen(
                    context,
                    userImage: ImageConstant.imgRectangle17,
                    userName: "msg_lentil_bolognese".tr,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 76.h,
                        margin: EdgeInsets.only(bottom: 3.v),
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
                              height: 17.v,
                              width: 50.h,
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
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16.v,
                          bottom: 9.v,
                        ),
                        child: SizedBox(
                          width: 12.h,
                          child: Divider(
                            indent: 1.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 25.v,
                        width: 18.h,
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
                          top: 7.v,
                          bottom: 1.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 40.h,
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
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup3,
          height: 58.v,
          width: 82.h,
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup4,
          height: 58.v,
          width: 84.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 11.v,
            bottom: 5.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup2,
          height: 64.v,
          width: 71.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
          ),
        ),
        Container(
          height: 66.v,
          width: 68.h,
          margin: EdgeInsets.only(
            left: 21.h,
            bottom: 9.v,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1,
                height: 66.v,
                width: 67.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 47.v,
                  width: 54.h,
                  margin: EdgeInsets.only(top: 2.v),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 47.v,
                          width: 54.h,
                          decoration: BoxDecoration(
                            color: appTheme.orange700,
                            borderRadius: BorderRadius.circular(
                              27.h,
                            ),
                            border: Border.all(
                              color: appTheme.black900,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCartGray90002,
                        height: 32.v,
                        width: 37.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 5.v),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return SizedBox(
      height: 87.v,
      width: 105.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 87.v,
            width: 105.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 4.h,
                bottom: 2.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                userName,
                style: CustomTextStyles.bodySmall8.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
