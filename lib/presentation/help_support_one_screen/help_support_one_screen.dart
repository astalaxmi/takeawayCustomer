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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSearchRow(context),
                    SizedBox(height: 35.v),
                    Center(
                      child: Container(
                        decoration: AppDecoration.outlineGrayF,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 3.v,
                                width: 1.h,
                                margin: EdgeInsets.only(left: 1.h),
                              ),
                              Text(
                                "lbl_feedback".tr,
                                style: CustomTextStyles.headlineSmallGray90001,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Column(
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
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumPoppinsGray9000115,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Center(
                          child: CustomIconButton(
                            height: 61.v,
                            width: 115.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle10161x115,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
}
