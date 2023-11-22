import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

class AppFood1RestaurantsScreen extends StatefulWidget {
  const AppFood1RestaurantsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AppFood1RestaurantsScreen> createState() =>
      _AppFood1RestaurantsScreenState();
}

class _AppFood1RestaurantsScreenState extends State<AppFood1RestaurantsScreen> {
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
                    children: [
                      _buildView(context),
                      SizedBox(height: 14.v),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_restaurant".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoGray10002,
                              ),
                              TextSpan(
                                text: "lbl_a2b".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoGray10002,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildRestaurantListgrid(context),
                      SizedBox(height: 20.v),
                      //_buildHome(context),
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
      height: 506.h,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSeventeen(
                    context,
                    userImage: ImageConstant.imgRectangle17,
                    userName: "msg_lentil_bolognese".tr,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 85.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "lbl2".tr,
                              style: CustomTextStyles.bodyMediumBlack90015,
                            ),
                            SizedBox(
                              height: 17.v,
                              width: 50.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 16.v,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10002,
                                        borderRadius: BorderRadius.circular(
                                          8.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "lbl_12_00".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                decrementCounter();
                              },
                              child: Icon(Icons.remove)),
                          Container(
                            height: 20.v,
                            width: 23.h,
                            child: Center(
                              child: Text(
                                counter.toString().tr,
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.orange700,
                              borderRadius: BorderRadius.circular(
                                9.h,
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child: Icon(Icons.add)),
                        ],
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }

  int counter = 0;
  // Initial counter value
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Row(
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
      ],
    );
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 3,
        ),
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: userImage,
              height: 120.v,
              width: 240.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 54.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  bottom: 6.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Text(
                  userName,
                  style: CustomTextStyles.bodySmall8.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
