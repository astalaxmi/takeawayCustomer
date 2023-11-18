import 'package:cusmerraj/localization/app_localization.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:cusmerraj/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class searchappbar extends StatefulWidget {
  const searchappbar({Key? key}) : super(key: key);

  @override
  State<searchappbar> createState() => _searchappbarState();
}

class _searchappbarState extends State<searchappbar> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 34.v,
            width: 186.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 10.v,
            ),
            child: CustomSearchView(),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
          // Expanded(child: CustomSearchView()),
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
}
