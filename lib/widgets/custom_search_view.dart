import 'package:cusmerraj/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.titleSmallOnPrimaryContainer_2,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged!.call(value);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleSmallOnPrimaryContainer_2,
        // prefixIcon: prefix ??
        //     Container(
        //       margin: EdgeInsets.only(
        //         left: 3.h,
        //         right: 19.h,
        //         bottom: 13.v,
        //       ),
        //       child: CustomImageView(
        //         imagePath: ImageConstant.imgSearch,
        //         height: 23.adaptSize,
        //         width: 23.adaptSize,
        //       ),
        //     ),
        // prefixIconConstraints: prefixConstraints ??
        //     BoxConstraints(
        //       maxHeight: 36.v,
        //     ),
        // suffixIcon: suffix ??
        //     Container(
        //       margin: EdgeInsets.only(
        //         left: 30.h,
        //         top: 2.v,
        //         bottom: 17.v,
        //       ),
        //       child: CustomImageView(
        //         imagePath: ImageConstant.imgCheckmark,
        //         height: 16.v,
        //         width: 24.h,
        //       ),
        //     ),
        // suffixIconConstraints: suffixConstraints ??
        //     BoxConstraints(
        //       maxHeight: 36.v,
        //     ),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 4.v),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.h),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.h),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.h),
              borderSide: BorderSide.none,
            ),
      );
}
