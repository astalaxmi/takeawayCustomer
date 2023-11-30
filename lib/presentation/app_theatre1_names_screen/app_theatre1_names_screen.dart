import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppTheatre1NamesScreen extends StatelessWidget {
  const AppTheatre1NamesScreen({Key? key})
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
                    padding: EdgeInsets.only(right: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildView(context),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_theatre_names".tr,
                            style:
                                CustomTextStyles.headlineLargePoppinsGray5001,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 449.v,
                                    width: 173.h,
                                    margin: EdgeInsets.only(left: 1.h),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle943,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 11.h),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle943,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(left: 11.h),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle943,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(left: 11.h),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 126.v),
                                            child: Text(
                                              "lbl_pvr_cinemas_1".tr,
                                              style:
                                                  theme.textTheme.headlineSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 124.v),
                                            child: Text(
                                              "lbl_pvr_cinemas_3".tr,
                                              style:
                                                  theme.textTheme.headlineSmall,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Text(
                                    "lbl_pvr_cinemas_5".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle943,
                                    height: 128.v,
                                    width: 132.h,
                                  ),
                                  SizedBox(
                                    height: 198.v,
                                    width: 169.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle943,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.centerRight,
                                          margin: EdgeInsets.only(right: 14.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "lbl_pvr_cinemas_4".tr,
                                            style:
                                                theme.textTheme.headlineSmall,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "lbl_pvr_cinemas_2".tr,
                                            style:
                                                theme.textTheme.headlineSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                    height: 162.v,
                                    width: 168.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle943,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 13.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "lbl_pvr_cinemas_6".tr,
                                            style:
                                                theme.textTheme.headlineSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 95.v),
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
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 49.h,
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
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
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
    );
  }
}
