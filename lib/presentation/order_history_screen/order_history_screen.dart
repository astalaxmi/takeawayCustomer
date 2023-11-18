import '../order_history_screen/widgets/orderhistorylist_item_widget.dart';
import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Column(
                      children: [
                        _buildSearchView(context),
                        SizedBox(height: 35.v),
                        Center(
                          child: Container(
                            decoration: AppDecoration.outlineGrayF,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgShoppingBag,
                                    height: 44.v,
                                    width: 36.h,
                                    margin: EdgeInsets.only(
                                      top: 13.v,
                                      bottom: 22.v,
                                    ),
                                  ),
                                  Container(
                                    width: 81.h,
                                    margin: EdgeInsets.only(
                                      left: 31.h,
                                      bottom: 6.v,
                                    ),
                                    child: Text(
                                      "lbl_order_history".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .headlineSmallGray90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildOrderHistoryList(context),
                        SizedBox(height: 175.v),
                        // _buildHomeRow(context),
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
  Widget _buildSearchView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 10.h,
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
                )),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Container(
                height: 34.v,
                width: 186.h,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 10.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_search".tr,
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderHistoryList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return OrderhistorylistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 58.v,
          width: 82.h,
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup3,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup3,
            height: 58.v,
            width: 82.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 58.v,
          width: 84.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 11.v,
            bottom: 5.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup4,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 58.v,
            width: 84.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 64.v,
          width: 71.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2,
            height: 64.v,
            width: 71.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 66.v,
          width: 67.h,
          margin: EdgeInsets.only(
            left: 22.h,
            bottom: 9.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup1,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup1,
            height: 66.v,
            width: 67.h,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
