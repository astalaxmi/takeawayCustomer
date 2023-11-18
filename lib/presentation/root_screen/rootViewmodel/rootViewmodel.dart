import 'package:cusmerraj/core/utils/image_constant.dart';
import 'package:cusmerraj/presentation/app_login_homepage_screen/app_login_homepage_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class RootViewModel extends ChangeNotifier {
  int currentIndex = 0;

  List<NavigatorItem> navigatorItems = [
    NavigatorItem(
      label: "HOME",
      iconPath: ImageConstant.imgGroup3,
      index: 0,
      screen: AppLoginHomepageScreen(),
    ),
    NavigatorItem(
      label: "MENU",
      iconPath: ImageConstant.imgGroup4,
      index: 1,
      screen: AppLoginHomepageScreen(),
    ),
    NavigatorItem(
      label: "CART",
      iconPath: ImageConstant.imgGroup2,
      index: 2,
      screen: AppLoginHomepageScreen(),
    ),
    NavigatorItem(
      label: "ACCOUNT",
      iconPath: ImageConstant.imgGroup1,
      index: 3,
      screen: AppLoginHomepageScreen(),
    ),
  ];
}

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem({
    required this.label,
    required this.iconPath,
    required this.index,
    required this.screen,
  });
}
