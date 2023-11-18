import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.takeawayRegistrationoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.takeawayRegistrationtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.takeawayRegistrationthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.takeawayRegistrationfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.takeawayRegistrationfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Takeaway_RegistrationSix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.takeawayRegistrationsixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App login homepage".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appLoginHomepageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_food2_Food Items".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appFood2FoodItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_food1_restaurants".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appFood1RestaurantsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_food3_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appFood3CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_food4_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appFood4CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Groceries2_ supermarket name".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.appGroceries2SupermarketNameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Groceries1_Supermarkets".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.appGroceries1SupermarketsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Groceries3_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appGroceries3CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Groceries4_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appGroceries4CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Medicines1_ Pharmacy names".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.appMedicines1PharmacyNamesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Medicines2_ medicine names".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.appMedicines2MedicineNamesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Medicines3_ Checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appMedicines3CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Medicines4_ Checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appMedicines4CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Theatre1 names".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appTheatre1NamesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Theatre2_food items".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appTheatre2FoodItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Theatre3_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appTheatre3CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App_Theatre4_checkout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appTheatre4CheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order History".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favourites".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.favouritesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help & Support".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help & Support One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportOneScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
