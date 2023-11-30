import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/theme/custom_text_style.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarOrder extends StatelessWidget {
  const CustomAppBarOrder(this._fadeAnimation);

  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //backgroundColor: primaryColor,
      backgroundColor: theme.colorScheme.onSecondaryContainer,

      expandedHeight: 115,
      elevation: 0,
      pinned: true,
      // floating: true,
      // snap: true,
      titleSpacing: 0,
      title: InkWell(
        onTap: () {
          //Navigator.of(context).pushNamed(LocationScreen.routeName);
        },
        splashColor: Color(0xFF004DC0),
        highlightColor: Color(0xFF00245A),
        child: Container(
          width: 165,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.mapMarkerAlt,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Expanded(
                child: AppText(
                  'Jayanagar',
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.expand_more_rounded,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      actions: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            width: 35,
            child: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.search,
                size: 18,
                color: Colors.white,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                //   Navigator.of(context).pushNamed(
                //   MainSearchScreen.routeName,
                // );
              },
            ),
          ),
        ),
        Container(
          width: 35,
          alignment: Alignment.center,
          child: IconButton(
            icon: const Icon(
              Icons.notification_add,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: 35,
          margin: EdgeInsets.only(right: 15),
          child: IconButton(
            // constraints: BoxConstraints(maxWidth: 10),
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                FaIcon(
                  FontAwesomeIcons.shoppingCart,
                  size: 18,
                  color: Colors.white,
                ),
                Positioned(
                  right: -7,
                  top: -4,
                  child: ClipOval(
                    child: Container(
                      width: 8,
                      height: 8,
                      color: Color(0xFFfbce19),
                    ),
                  ),
                ),
              ],
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              // Navigator.of(context).pushNamed(
              // CartScreen.routeName,
              //);
            },
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                //   Navigator.of(context).pushNamed(
                //   MainSearchScreen.routeName,
                // );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
                padding: EdgeInsets.only(left: 15),
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 3,
                      // spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.search,
                      size: 18,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    AppText(
                      'Search for store/item',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
