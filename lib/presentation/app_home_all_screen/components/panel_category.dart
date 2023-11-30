import 'package:cusmerraj/presentation/app_food2_food_items_screen/app_food2_food_items_screen.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PanelCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      children: [
        gridPanel(context, Colors.orange.shade300, 'Food & Vegetables'),
        gridPanel(context, Colors.orange.shade300, 'Groceries & Essentials'),
        gridPanel(
          context,
          Colors.orange.shade300,
          'Medicines ',
        ),
        gridPanel(context, Colors.orange.shade300, 'Theatres'),
      ],
    );
  }

  Widget gridPanel(
    BuildContext context,
    Color color,
    String title,
    //[
    // String routeName = StoreListScreen.routeName,
    //]
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppFood2FoodItemsScreen()),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 95,
                  child: Text(
                    title,
                    softWrap: true,
                    style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: FaIcon(FontAwesomeIcons.arrowRight, size: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
