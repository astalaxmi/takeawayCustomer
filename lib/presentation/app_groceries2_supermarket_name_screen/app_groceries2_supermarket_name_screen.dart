import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppGroceries2SupermarketNameScreen extends StatelessWidget {
  const AppGroceries2SupermarketNameScreen({Key? key})
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
                    children: [
                      _buildView(context),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 57.h),
                          child: Text(
                            "lbl_supermarkets".tr,
                            style:
                                CustomTextStyles.headlineLargePoppinsGray5001,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildWidget(context),
                      SizedBox(height: 2.v),
                      _buildSupermarketOne(context),
                      _buildSupermarketThree2(context),
                      SizedBox(height: 2.v),
                      _buildSupermarketFive(context),
                      SizedBox(height: 91.v),
                      _buildHome(context),
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
          right: 51.h,
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
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle94,
            height: 128.v,
            width: 132.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle94,
            height: 128.v,
            width: 132.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupermarketOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 158.v,
            width: 162.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle94,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_supermarket1".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          _buildSupermarketThree(
            context,
            userName: "lbl_supermarket2".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupermarketThree2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: _buildSupermarketThree(
              context,
              userName: "lbl_supermarket3".tr,
            ),
          ),
          Column(
            children: [
              Text(
                "lbl_supermarket4".tr,
                style: theme.textTheme.headlineSmall,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle94,
                height: 128.v,
                width: 132.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupermarketFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_supermarket5".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Text(
            "lbl_supermarket6".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 11.h),
        child: Row(
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
      ),
    );
  }

  /// Common widget
  Widget _buildSupermarketThree(
    BuildContext context, {
    required String userName,
  }) {
    return SizedBox(
      height: 156.v,
      width: 169.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle94,
            height: 128.v,
            width: 132.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 11.h),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              userName,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: appTheme.gray5001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
