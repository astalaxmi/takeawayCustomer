import 'package:cusmerraj/api_service/Remote/NetworkService/networkService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConstant {
  //routes

  static String PRODUCT_VIEW = "/productviewscreen";
  static String MAP_DATA_PASS = "/productviewscreen";
  static String SIGN_IN = "/signIn";

//------------------Local storage--------------------------------------------------------------------------------------------------
  //Local storage
  static String LOGIN_APPDATA = "loginappdata";
  static String ONTAP = "ontap";
  static String MAP = "map";
  static String edittext = "edittext";

//------------------notifier storage--------------------------------------------------------------------------------------------------

  /// AppConstant values
  SharedPreferences? pref;
  ValueNotifier<String> userToken = ValueNotifier("");
  ValueNotifier<String> emailvalue = ValueNotifier("");

  ValueNotifier<bool> netConnection = ValueNotifier(false);
  ValueNotifier<NetworkStatus> checkNetwork =
      ValueNotifier(NetworkStatus.online);
}

AppConstant appConstants = AppConstant();
