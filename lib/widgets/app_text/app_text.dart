import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  final String data;
  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
  final TextDecoration? decoration;
  final double? letterSpacing;

  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextStyle? style;
  AppText(@required this.data,
      {Key? key,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14,
      this.color,
      this.decoration,
      this.textAlign,
      this.overflow,
      this.letterSpacing,
      this.style})
      : super(key: key);

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data,
      textAlign: widget.textAlign ?? TextAlign.left,
      style: widget.style ??
          TextStyle(
              decoration: widget.decoration,
              color: widget.color ?? Colors.black,
              fontFamily: 'Poppins',
              fontSize: widget.fontSize ?? 13,
              letterSpacing: widget.letterSpacing,
              fontWeight: widget.fontWeight),
      overflow: widget.overflow,
    );
  }
}
