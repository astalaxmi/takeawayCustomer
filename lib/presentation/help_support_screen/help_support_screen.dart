import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({Key? key})
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
                        _buildSearchView(context),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h, right: 10.h),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  decoration: AppDecoration.outlineGrayF,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgHelpCircleGray90001,
                                        height: 32.v,
                                        width: 37.h,
                                        margin: EdgeInsets.only(
                                          top: 36.v,
                                          bottom: 17.v,
                                        ),
                                      ),
                                      Container(
                                        width: 95.h,
                                        margin: EdgeInsets.only(
                                          left: 30.h,
                                          top: 11.v,
                                        ),
                                        child: Text(
                                          "lbl_help_support".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .headlineSmallGray90001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 32.v),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.h),
                                  decoration: AppDecoration.outlineGrayF,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomElevatedButton(
                                        height: 34.v,
                                        width: 188.h,
                                        text: "msg_type_your_message".tr,
                                        margin: EdgeInsets.only(
                                          left: 4.h,
                                          top: 471.v,
                                          bottom: 13.v,
                                        ),
                                        buttonStyle: CustomButtonStyles.fillRed,
                                        buttonTextStyle: CustomTextStyles
                                            .bodyMediumPoppinsGray9000115,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle101,
                                        height: 61.v,
                                        width: 115.h,
                                        margin: EdgeInsets.only(
                                          left: 6.h,
                                          top: 457.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
            padding: EdgeInsets.only(left: 3.h),
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
  Widget _buildHomeStack(BuildContext context) {
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
