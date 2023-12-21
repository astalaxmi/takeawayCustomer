// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xFF0793BB);
  static const white = Colors.white;
  static const red = Color(0xFFf54236);
  static const green = Color(0xFF43a046);
  static const black = Colors.black;
  static const grey = Color(0xFFbfbfbf);
  static const lightGrey = Color(0xFFdfe0e2);
  static const appBarGradient1 = Color(0xFF0793BB);
  static const appBarGradient2 = Color(0xFF62B852);
}
