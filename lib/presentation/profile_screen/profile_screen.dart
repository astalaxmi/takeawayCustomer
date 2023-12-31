import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/presentation/app_order_screen/components/custom_appbar_order.dart';
import 'package:cusmerraj/presentation/favourites_screen/favourites_screen.dart';
import 'package:cusmerraj/presentation/help_support_screen/help_support_screen.dart';
import 'package:cusmerraj/presentation/order_history_screen/order_history_screen.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../help_support_one_screen/help_support_one_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (135 - 75);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scrollController = ScrollController()
      ..addListener(() {
        _isAppBarExpanded
            ? _animationController.forward()
            : _animationController.reverse();
      });
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onSecondaryContainer,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomAppBarOrder(_fadeAnimation),
        ],
        body: Body(),
      ),
    );
  }

  Widget Body() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 4.v),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearch(context),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h, right: 15.h),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      const OrderHistoryScreen()),
                            );
                          },
                          child: _buildSeventyOne(
                            context,
                            truckImage: ImageConstant.imgShoppingBag,
                            trackOrderText: "lbl_order_history".tr,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      const HelpSupportOneScreen()),
                            );
                          },
                          child: _buildSeventyOne(
                            context,
                            truckImage: ImageConstant.imgTruck,
                            trackOrderText: "lbl_track_order".tr,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildSixtyNine(context),
                        SizedBox(height: 17.v),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      const HelpSupportScreen()),
                            );
                          },
                          child: _buildSeventyOne(
                            context,
                            truckImage: ImageConstant.imgHelpCircle,
                            trackOrderText: "HelpSupportScreen".tr,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const HelpSupportOneScreen()),
                              );
                            },
                            child: _buildArrowRight(context)),
                        SizedBox(height: 96.v),
                      ],
                    ),
                  ),
                  //_buildHome(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 8.h, top: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_poppins".tr,
                            style: CustomTextStyles
                                .headlineSmallOnPrimaryContainer,
                          ),
                          Text(
                            "lbl_91_555555555".tr,
                            style: CustomTextStyles.bodyMediumRobotoWhite900,
                          ),
                          Text(
                            "msg_order_takeaway_com".tr,
                            style: CustomTextStyles.bodyMediumRobotoWhite900,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 87.v,
                        width: 87.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 99.v,
                                width: 100.h,
                                margin: EdgeInsets.only(right: 1.h),
                                decoration: BoxDecoration(
                                  color: appTheme.gray90001,
                                  borderRadius: BorderRadius.circular(
                                    50.h,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgDj1,
                              height: 117.v,
                              width: 109.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 42.v),
                Padding(
                  padding: EdgeInsets.only(top: 11.v, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_view_activity".tr,
                        style: CustomTextStyles
                            .bodyMediumPoppinsOnPrimaryContainer14
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEdit,
                        height: 24.v,
                        width: 22.h,
                        margin: EdgeInsets.only(bottom: 7.v),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => FavouritesScreen()),
        );
      },
      child: Container(
        decoration: AppDecoration.outlineGrayF,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLocationGray90001,
                height: 19.v,
                width: 22.h,
                margin: EdgeInsets.only(
                  top: 14.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 14.v,
                ),
                child: Text(
                  "lbl_favourites".tr,
                  style: CustomTextStyles.bodyLargeGray90001,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.v,
                width: 22.h,
                margin: EdgeInsets.only(
                  top: 12.v,
                  right: 3.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowRight(BuildContext context) {
    return SizedBox(
      height: 63.v,
      width: 357.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 23.v,
            width: 22.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 16.v,
              right: 21.h,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineGrayF,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNounFeedback1520147,
                    height: 39.v,
                    width: 36.h,
                    margin: EdgeInsets.only(top: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 9.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_feedback".tr,
                      style: CustomTextStyles.bodyLargeGray90001,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 23.v,
                    width: 22.h,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyOne(
    BuildContext context, {
    required String truckImage,
    required String trackOrderText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGrayF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: truckImage,
            height: 23.v,
            width: 21.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 5.v,
            ),
            child: Text(
              trackOrderText,
              style: CustomTextStyles.bodyLargeGray90001.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 23.v,
            width: 22.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }
}
