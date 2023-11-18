import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderhistorylistItemWidget extends StatelessWidget {
  const OrderhistorylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray4003f,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: Text(
              "lbl_7_eleven2".tr,
              style: CustomTextStyles.titleLargePoppinsGray90001,
            ),
          ),
          Container(
            width: 142.h,
            margin: EdgeInsets.only(
              left: 74.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_order_id2".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray9000114,
                  ),
                  TextSpan(
                    text: "lbl_xxxxxxxxx".tr,
                    style: CustomTextStyles.titleSmallOnPrimaryContainerBold,
                  ),
                  TextSpan(
                    text: "lbl_date".tr,
                    style: CustomTextStyles.bodyMediumPoppinsGray9000114,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_august_16_2023".tr,
                    style: CustomTextStyles.titleSmallOnPrimaryContainerBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
