import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppLoginHomepageScreen extends StatelessWidget {
  const AppLoginHomepageScreen({Key? key})
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
                    padding: EdgeInsets.only(right: 4.h),
                    child: Column(
                      children: [
                        SizedBox(height: 17.v),
                        _buildView(context),
                        SizedBox(height: 128.v),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 20.h),
                          child: Column(
                            children: [
                              _buildFood(context),
                              SizedBox(height: 17.v),
                              _buildMedicines(context),
                              SizedBox(height: 136.v),
                            ],
                          ),
                        ),
                        // _buildHome(context),
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
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 48.h,
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
  Widget _buildFood(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.approotScreen);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 164.v,
              width: 125.h,
              margin: EdgeInsets.only(
                top: 29.v,
                bottom: 1.v,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.appFood2FoodItemsScreen);
                    },
                    imagePath: ImageConstant.imgRectangle84,
                    height: 125.adaptSize,
                    width: 125.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_food".tr,
                        style: CustomTextStyles.headlineLargePoppinsGray5001,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle84,
                    height: 125.adaptSize,
                    width: 125.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 194.v,
              width: 153.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle85,
                    height: 148.v,
                    width: 142.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "lbl_groceries".tr,
                      style: CustomTextStyles.headlineLargePoppinsGray100,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle85,
                    height: 148.v,
                    width: 142.h,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMedicines(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 191.v,
          width: 163.h,
          margin: EdgeInsets.only(bottom: 8.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle86,
                height: 145.v,
                width: 151.h,
                alignment: Alignment.topLeft,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "lbl_medicines".tr,
                  style: CustomTextStyles.headlineLargePoppinsGray10003,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle86,
                height: 145.v,
                width: 151.h,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
        Container(
          height: 192.v,
          width: 151.h,
          margin: EdgeInsets.only(top: 8.v),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle86,
                height: 145.v,
                width: 151.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_theatres".tr,
                    style: CustomTextStyles.headlineLargePoppinsGray10003,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle93,
                height: 145.v,
                width: 151.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
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
