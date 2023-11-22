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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //_buildRowWithSearch(context),
                      SizedBox(height: 21.v),
                      Center(
                        child: Text(
                          "lbl_restaurants".tr,
                          style: CustomTextStyles.titleLargeRobotoGray10002,
                        ),
                      ),
                      SizedBox(height: 40.v),
                      _buildRestaurantListgrid(context),
                      // _buildRestaurantDetails(context),
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
  Widget _buildRestaurantListgrid(BuildContext context) {
    return SizedBox(
      height: 510.h,
      width: MediaQuery.sizeOf(context).width,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of items in each row
          crossAxisSpacing: 10.0, // Set the spacing between items horizontally
          mainAxisSpacing: 10.0, // Set the spacing between items vertically
        ),
        itemCount: 8, // Set the total number of items
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 143.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: CustomImageView(
                    // You can modify this part to load different images based on the index
                    imagePath: index % 2 == 0
                        ? ImageConstant.imgRectangle88
                        : ImageConstant.imgRectangle89,
                    height: 128.v,
                    width: 132.h,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  index % 2 == 0 ? "lbl_restaurant1".tr : "lbl_restaurant2".tr,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onInverseSurface,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
