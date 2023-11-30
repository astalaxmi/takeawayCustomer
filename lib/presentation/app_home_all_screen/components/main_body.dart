import 'package:cusmerraj/presentation/app_home_all_screen/components/category_grid.dart';
import 'package:cusmerraj/presentation/app_home_all_screen/components/panel_category.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:cusmerraj/widgets/carousel_banner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'banner_slider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.onSecondaryContainer,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          color: theme.colorScheme.onSecondaryContainer,

          // color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselBanner(
                [
                  Container(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVdV2TgDvdhiM5024UgDBmx6_qhX9sfQICw&usqp=CAU",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpu8KaXdLzzcMMYCW1-Ob8Lcgd43O_z6Omfg&usqp=CAU",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJjCw-EXNkZI7On3CgMRqG63xaTsWd4a9Hxg&usqp=CAU",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QvVsOFZCJ3qKhwZsseERR2UWLGmwrgHWhw&usqp=CAU",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AppText(
                  'Essentials delivered to your Takeaway',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 15),
              PanelCategory(),
              SizedBox(height: 25),
              CategoryGrid(),
              SizedBox(height: 30),
              Divider(thickness: 8, color: Color(0xFFedf0f7)),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AppText(
                  'Top Picks for you',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              BannerSlider(),
              SizedBox(height: 20),
              Divider(thickness: 8, color: Color(0xFFedf0f7)),
              _buildAssistantPanel(), SizedBox(height: 10),
              Divider(thickness: 8, color: Color(0xFFedf0f7)),
              // SupportPanel(),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildAssistantPanel() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.onSecondaryContainer,
              theme.colorScheme.onSecondaryContainer,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'TakeWay ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(FontAwesomeIcons.arrowRight, size: 10),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Just enter a location and the task.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                'We will get it done.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
