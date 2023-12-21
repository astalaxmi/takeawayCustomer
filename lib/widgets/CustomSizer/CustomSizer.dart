// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppSize {
  static double height(BuildContext context, double value) {
    double height = MediaQuery.of(context).size.height / 100;
    return height * value;
  }

  static double width(BuildContext context, double value) {
    double width = MediaQuery.of(context).size.width / 100;
    return width * value;
  }
}
