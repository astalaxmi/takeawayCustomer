import 'package:cusmerraj/localization/app_localization.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:cusmerraj/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class ArrowSearchAppBar extends StatefulWidget {
  const ArrowSearchAppBar({Key? key}) : super(key: key);

  @override
  State<ArrowSearchAppBar> createState() => _ArrowSearchAppBarState();
}

class _ArrowSearchAppBarState extends State<ArrowSearchAppBar> {



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
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5.v,
          ),
          Expanded(child: CustomSearchView()),
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
