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
      decoration: AppDecoration.outlineGray4003f,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "lbl_7_eleven2".tr,
              style: CustomTextStyles.bodyMediumPoppinsGray9000114,
            ),
            RichText(
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
          ],
        ),
      ),
    );
  }
}
