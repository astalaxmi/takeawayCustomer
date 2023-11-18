import 'package:cusmerraj/presentation/app_food1_restaurants_screen/app_food1_restaurants_screen.dart';
import 'package:cusmerraj/presentation/app_food2_food_items_screen/app_food2_food_items_screen.dart';
import 'package:cusmerraj/presentation/app_food3_checkout_screen/app_food3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_food4_checkout_screen/app_food4_checkout_screen.dart';
import 'package:cusmerraj/presentation/profile_screen/profile_screen.dart';
import 'package:cusmerraj/presentation/root_screen/rootViewmodel/rootViewmodel.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Mynavigationbar extends StatefulWidget {
  const Mynavigationbar({Key? key}) : super(key: key);

  @override
  _MynavigationbarState createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<Mynavigationbar> {
  late RootViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState

    Provider.of<RootViewModel>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    viewModel = context.watch<RootViewModel>();
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: 0,
          height: 70, backgroundColor: theme.colorScheme.onSecondaryContainer,
          border: null,
          inactiveColor: appTheme.gray100,
          activeColor: Colors.orange, iconSize: 35,
          // backgroundColor: Colors.orange,
          items: viewModel.navigatorItems.map((e) {
            return getNavigationBarItem(
              index: e.index,
              iconPath: e.iconPath,
            );
          }).toList(),
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return AppFood2FoodItemsScreen();
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return AppFood1RestaurantsScreen();
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return AppFood3CheckoutScreen();
              });
            case 3:
              return CupertinoTabView(builder: (context) {
                return ProfileScreen();
              });

            default:
              CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: Text("page dates "),
                  ),
                );
              });
          }
          ;
          return Container();
        });
  }

  BottomNavigationBarItem getNavigationBarItem({
    required String iconPath,
    required int index,
  }) {
    Color iconColor =
        index == viewModel.currentIndex ? Colors.orange : Colors.orange;
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath.toString(),
        // width: viewModel.navigatorItems[index].width,
        // height: viewModel.navigatorItems[index].height,
        width: 28,
        height: 35,
        color: iconColor,
      ),
    );
  }
}
