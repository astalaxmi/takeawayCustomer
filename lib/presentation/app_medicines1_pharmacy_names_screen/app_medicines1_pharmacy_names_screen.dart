import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppMedicines1PharmacyNamesScreen extends StatelessWidget {
  const AppMedicines1PharmacyNamesScreen({Key? key})
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
                    padding: EdgeInsets.only(right: 12.h),
                    child: Column(
                      children: [
                        _buildSearchBar(context),
                        SizedBox(height: 31.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_pharmacy_names".tr,
                              style:
                                  CustomTextStyles.headlineLargePoppinsGray5001,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildPharmacyImages(context),
                        SizedBox(height: 2.v),
                        _buildPharmacyCounters1(context),
                        _buildPharmacyCounters2(context),
                        SizedBox(height: 2.v),
                        _buildPharmacyCounters3(context),
                        SizedBox(height: 91.v),
                        _buildAppNavigation(context),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPharmacyImages(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle941,
            height: 128.v,
            width: 132.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle941,
            height: 128.v,
            width: 132.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPharmacyCounters1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 158.v,
            width: 145.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle941,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "lbl_pharmacy_1".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 159.v,
            width: 155.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle941,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "lbl_pharmacy_2".tr,
                    style: theme.textTheme.headlineSmall,
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
  Widget _buildPharmacyCounters2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 156.v,
            width: 144.h,
            margin: EdgeInsets.only(bottom: 10.v),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle941,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 1.h),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_pharmacy_3".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_pharmacy_4".tr,
                style: theme.textTheme.headlineSmall,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle941,
                height: 128.v,
                width: 132.h,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPharmacyCounters3(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 3.h,
          right: 14.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_pharmacy_5".tr,
              style: theme.textTheme.headlineSmall,
            ),
            Text(
              "lbl_pharmacy_6".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Row(
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
    );
  }
}
