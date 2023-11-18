import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

class AppFood2FoodItemsScreen extends StatelessWidget {
  const AppFood2FoodItemsScreen({Key? key})
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
                      searchappbar(),
                      //_buildRowWithSearch(context),
                      SizedBox(height: 21.v),
                      Center(
                        child: Text(
                          "lbl_restaurants".tr,
                          style: CustomTextStyles.headlineLargePoppinsGray5001,
                        ),
                      ),
                      SizedBox(height: 50.v),
                      _buildRestaurantListgrid(context),
                      // _buildRestaurantDetails(context),
                      SizedBox(height: 60.v),
                      //_buildBottomNavigationBar(context),
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
  Widget _buildRowWithSearch(BuildContext context) {
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
  Widget _buildRestaurantListgrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h),
      child: SizedBox(
        height: 476.h,
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
            return Container(
              height: 163.v,
              width: 143.h,
              margin: EdgeInsets.only(bottom: 2.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    // You can modify this part to load different images based on the index
                    imagePath: index % 2 == 0
                        ? ImageConstant.imgRectangle88
                        : ImageConstant.imgRectangle89,
                    height: 128.v,
                    width: 132.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      // You can modify this part to load different text based on the index
                      index % 2 == 0
                          ? "lbl_restaurant1".tr
                          : "lbl_restaurant2".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRestaurantList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 163.v,
            width: 143.h,
            margin: EdgeInsets.only(bottom: 2.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle88,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_restaurant1".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 163.v,
            width: 145.h,
            margin: EdgeInsets.only(top: 3.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle89,
                  height: 128.v,
                  width: 132.h,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_restaurant2".tr,
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
  Widget _buildRestaurantDetails(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 11.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 286.v,
                  width: 148.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle89,
                        height: 128.v,
                        width: 132.h,
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle89,
                        height: 128.v,
                        width: 132.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 3.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_restaurant3".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_restaurant5".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 163.v,
                  width: 147.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle89,
                        height: 128.v,
                        width: 132.h,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_restaurant4".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  height: 163.v,
                  width: 151.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle89,
                        height: 128.v,
                        width: 132.h,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_restaurant6".tr,
                          style: theme.textTheme.headlineSmall,
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
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
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
        CustomImageView(
          imagePath: ImageConstant.imgGroup1,
          height: 66.v,
          width: 67.h,
          margin: EdgeInsets.only(
            left: 22.h,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }
}
