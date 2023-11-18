import 'package:cusmerraj/presentation/root_screen/view/RootView.dart';
import 'package:flutter/material.dart';
import 'package:cusmerraj/presentation/takeaway_registrationone_screen/takeaway_registrationone_screen.dart';
import 'package:cusmerraj/presentation/takeaway_registrationtwo_screen/takeaway_registrationtwo_screen.dart';
import 'package:cusmerraj/presentation/takeaway_registrationthree_screen/takeaway_registrationthree_screen.dart';
import 'package:cusmerraj/presentation/takeaway_registrationfour_screen/takeaway_registrationfour_screen.dart';
import 'package:cusmerraj/presentation/takeaway_registrationfive_screen/takeaway_registrationfive_screen.dart';
import 'package:cusmerraj/presentation/takeaway_registrationsix_screen/takeaway_registrationsix_screen.dart';
import 'package:cusmerraj/presentation/app_login_homepage_screen/app_login_homepage_screen.dart';
import 'package:cusmerraj/presentation/app_food2_food_items_screen/app_food2_food_items_screen.dart';
import 'package:cusmerraj/presentation/app_food1_restaurants_screen/app_food1_restaurants_screen.dart';
import 'package:cusmerraj/presentation/app_food3_checkout_screen/app_food3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_food4_checkout_screen/app_food4_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_groceries2_supermarket_name_screen/app_groceries2_supermarket_name_screen.dart';
import 'package:cusmerraj/presentation/app_groceries1_supermarkets_screen/app_groceries1_supermarkets_screen.dart';
import 'package:cusmerraj/presentation/app_groceries3_checkout_screen/app_groceries3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_groceries4_checkout_screen/app_groceries4_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_medicines1_pharmacy_names_screen/app_medicines1_pharmacy_names_screen.dart';
import 'package:cusmerraj/presentation/app_medicines2_medicine_names_screen/app_medicines2_medicine_names_screen.dart';
import 'package:cusmerraj/presentation/app_medicines3_checkout_screen/app_medicines3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_medicines4_checkout_screen/app_medicines4_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_theatre1_names_screen/app_theatre1_names_screen.dart';
import 'package:cusmerraj/presentation/app_theatre2_food_items_screen/app_theatre2_food_items_screen.dart';
import 'package:cusmerraj/presentation/app_theatre3_checkout_screen/app_theatre3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_theatre4_checkout_screen/app_theatre4_checkout_screen.dart';
import 'package:cusmerraj/presentation/profile_screen/profile_screen.dart';
import 'package:cusmerraj/presentation/order_history_screen/order_history_screen.dart';
import 'package:cusmerraj/presentation/favourites_screen/favourites_screen.dart';
import 'package:cusmerraj/presentation/help_support_screen/help_support_screen.dart';
import 'package:cusmerraj/presentation/help_support_one_screen/help_support_one_screen.dart';
import 'package:cusmerraj/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String takeawayRegistrationoneScreen =
      '/takeaway_registrationone_screen';

  static const String takeawayRegistrationtwoScreen =
      '/takeaway_registrationtwo_screen';

  static const String takeawayRegistrationthreeScreen =
      '/takeaway_registrationthree_screen';

  static const String takeawayRegistrationfourScreen =
      '/takeaway_registrationfour_screen';

  static const String takeawayRegistrationfiveScreen =
      '/takeaway_registrationfive_screen';

  static const String takeawayRegistrationsixScreen =
      '/takeaway_registrationsix_screen';

  static const String appLoginHomepageScreen = '/app_login_homepage_screen';

  static const String appFood2FoodItemsScreen = '/app_food2_food_items_screen';

  static const String appFood1RestaurantsScreen =
      '/app_food1_restaurants_screen';

  static const String appFood3CheckoutScreen = '/app_food3_checkout_screen';

  static const String appFood4CheckoutScreen = '/app_food4_checkout_screen';

  static const String appGroceries2SupermarketNameScreen =
      '/app_groceries2_supermarket_name_screen';

  static const String appGroceries1SupermarketsScreen =
      '/app_groceries1_supermarkets_screen';

  static const String appGroceries3CheckoutScreen =
      '/app_groceries3_checkout_screen';

  static const String appGroceries4CheckoutScreen =
      '/app_groceries4_checkout_screen';

  static const String appMedicines1PharmacyNamesScreen =
      '/app_medicines1_pharmacy_names_screen';

  static const String appMedicines2MedicineNamesScreen =
      '/app_medicines2_medicine_names_screen';

  static const String appMedicines3CheckoutScreen =
      '/app_medicines3_checkout_screen';

  static const String appMedicines4CheckoutScreen =
      '/app_medicines4_checkout_screen';

  static const String appTheatre1NamesScreen = '/app_theatre1_names_screen';

  static const String appTheatre2FoodItemsScreen =
      '/app_theatre2_food_items_screen';

  static const String appTheatre3CheckoutScreen =
      '/app_theatre3_checkout_screen';

  static const String appTheatre4CheckoutScreen =
      '/app_theatre4_checkout_screen';

  static const String profileScreen = '/profile_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String favouritesScreen = '/favourites_screen';

  static const String helpSupportScreen = '/help_support_screen';

  static const String helpSupportOneScreen = '/help_support_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String approotScreen = '/app_root_screen';

  static Map<String, WidgetBuilder> routes = {
    approotScreen: (context) => Mynavigationbar(),
    takeawayRegistrationoneScreen: (context) => TakeawayRegistrationoneScreen(),
    takeawayRegistrationtwoScreen: (context) => TakeawayRegistrationtwoScreen(),
    takeawayRegistrationthreeScreen: (context) =>
        TakeawayRegistrationthreeScreen(),
    takeawayRegistrationfourScreen: (context) =>
        TakeawayRegistrationfourScreen(),
    takeawayRegistrationfiveScreen: (context) =>
        TakeawayRegistrationfiveScreen(),
    takeawayRegistrationsixScreen: (context) => TakeawayRegistrationsixScreen(),
    appLoginHomepageScreen: (context) => AppLoginHomepageScreen(),
    appFood2FoodItemsScreen: (context) => AppFood2FoodItemsScreen(),
    appFood1RestaurantsScreen: (context) => AppFood1RestaurantsScreen(),
    appFood3CheckoutScreen: (context) => AppFood3CheckoutScreen(),
    appFood4CheckoutScreen: (context) => AppFood4CheckoutScreen(),
    appGroceries2SupermarketNameScreen: (context) =>
        AppGroceries2SupermarketNameScreen(),
    appGroceries1SupermarketsScreen: (context) =>
        AppGroceries1SupermarketsScreen(),
    appGroceries3CheckoutScreen: (context) => AppGroceries3CheckoutScreen(),
    appGroceries4CheckoutScreen: (context) => AppGroceries4CheckoutScreen(),
    appMedicines1PharmacyNamesScreen: (context) =>
        AppMedicines1PharmacyNamesScreen(),
    appMedicines2MedicineNamesScreen: (context) =>
        AppMedicines2MedicineNamesScreen(),
    appMedicines3CheckoutScreen: (context) => AppMedicines3CheckoutScreen(),
    appMedicines4CheckoutScreen: (context) => AppMedicines4CheckoutScreen(),
    appTheatre1NamesScreen: (context) => AppTheatre1NamesScreen(),
    appTheatre2FoodItemsScreen: (context) => AppTheatre2FoodItemsScreen(),
    appTheatre3CheckoutScreen: (context) => AppTheatre3CheckoutScreen(),
    appTheatre4CheckoutScreen: (context) => AppTheatre4CheckoutScreen(),
    profileScreen: (context) => ProfileScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    favouritesScreen: (context) => FavouritesScreen(),
    helpSupportScreen: (context) => HelpSupportScreen(),
    helpSupportOneScreen: (context) => HelpSupportOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
