import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:cusmerraj/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HelpSupportOneScreen extends StatelessWidget {
  const HelpSupportOneScreen({Key? key})
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSearchRow(context),
                        SizedBox(height: 35.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 29.h,
                              vertical: 25.v,
                            ),
                            decoration: AppDecoration.outlineGrayF,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 3.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      SizedBox(height: 2.v),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray90001,
                                        height: 2.adaptSize,
                                        width: 2.adaptSize,
                                      ),
                                      SizedBox(height: 6.v),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgBookmark,
                                        height: 20.v,
                                        width: 19.h,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(16.h, 5.v, 10.h, 2.v),
                                  child: Text(
                                    "lbl_feedback".tr,
                                    style:
                                        CustomTextStyles.headlineSmallGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h, right: 10.h),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.h,
                                  vertical: 89.v,
                                ),
                                decoration: AppDecoration.outlineGrayF,
                                child: Center(
                                  child: CustomElevatedButton(
                                    height: 34.v,
                                    text: "msg_type_your_feedback".tr,
                                    margin: EdgeInsets.all(10),
                                    buttonStyle: CustomButtonStyles.fillRed,
                                    buttonTextStyle: CustomTextStyles
                                        .bodyMediumPoppinsGray9000115,
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.v),
                              Center(
                                child: CustomIconButton(
                                  height: 61.v,
                                  width: 115.h,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle10161x115,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 211.v),
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
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 10.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
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
  Widget _buildHomeRow(BuildContext context) {
    return Row(
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
