import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:cusmerraj/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppFood4CheckoutScreen extends StatelessWidget {
  const AppFood4CheckoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: appTheme.teal50,
          title: GestureDetector(
            onTap: () {
//              Navigator.push(context, SizeTransition4(SearchPage()));
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (_) => const SearchPage()));
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 45,
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'TakeAway.com....',
                              style:
                                  CustomTextStyles.titleSmallPoppinsBluegray800,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  size: 15,
                                  color: Color(0XFF0274BC),
                                )),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          actions: [
            // Navigate to the Search Screen

            IconButton(
              icon: const Icon(
                Icons.notification_add,
                size: 25,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        backgroundColor: appTheme.teal50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 14.v),
                        Container(
                          child: AppText("msg_order_in_progress".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.headlineSmallRobotoBlack900),
                        ),
                        SizedBox(height: 47.v),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 126.h,
                                child: Text(
                                  "msg_success_your_order".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLargeRoboto,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgProfileBlack900,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 5.h,
                                  top: 12.v,
                                  bottom: 13.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 51.v),
                        Text(
                          "msg_time_to_pick_up".tr,
                          style: CustomTextStyles.titleLargeRoboto,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_15_25".tr,
                          style: CustomTextStyles.headlineSmallRobotoOrange700,
                        ),
                        SizedBox(height: 9.v),
                        CustomElevatedButton(
                          text: "lbl_cancel_order".tr,
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: theme.textTheme.titleMedium!,
                        ),
                        SizedBox(height: 37.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLocationGray90002,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 6.v,
                                bottom: 9.v,
                              ),
                              child: Text(
                                "msg_restaurant_address".tr,
                                style: CustomTextStyles.titleLargeRoboto,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 85.v),
                        Text(
                          "msg_follow_us_on_social".tr,
                          style: CustomTextStyles.bodyMediumRobotoBlack900,
                        ),
                        SizedBox(height: 23.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBxlFacebookSquare,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              margin: EdgeInsets.only(top: 2.v),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgAkarIconsInstagramFill,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              margin: EdgeInsets.only(
                                left: 27.h,
                                top: 2.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgAkarIconsTwitterFill,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              margin: EdgeInsets.only(
                                left: 26.h,
                                top: 2.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgAkarIconsYoutubeFill,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              margin: EdgeInsets.only(left: 26.h),
                            ),
                          ],
                        ),
                        SizedBox(height: 53.v),
                        //_buildHome(context),
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
        right: 33.h,
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
          Container(
            height: 47.v,
            width: 104.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_search".tr,
                      style: CustomTextStyles.headlineLargeInter,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_search".tr,
                    style: CustomTextStyles.headlineLargeBlack900,
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
  Widget _buildHome(BuildContext context) {
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
            imagePath: ImageConstant.imgCategory,
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
