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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildSearchView(context),
                      SizedBox(height: 35.v),
                      Center(
                        child: Container(
                          decoration: AppDecoration.outlineGrayF,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgShoppingBag,
                                  height: 35.v,
                                  width: 36.h,
                                ),
                                Text(
                                  "lbl_order_history".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.headlineSmallGray90001,
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
    return ListView.separated(
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
    );
  }
}
