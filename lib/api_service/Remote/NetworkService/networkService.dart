import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cusmerraj/api_service/DebugFunctions/securedPrint.dart';
import 'package:cusmerraj/app_constant/Constant.dart';
import 'package:flutter/material.dart';

enum NetworkStatus { online, offline }

class NetworkStatusService {
  StreamController<NetworkStatus> networkStatusController =
      StreamController<NetworkStatus>();

  NetworkStatusService() {
    Connectivity().onConnectivityChanged.listen((status) {
      networkStatusController.add(_getNetworkStatus(status));
      SecurePrint("status::${_getNetworkStatus(status)}");
      appConstants.netConnection.value =
          _getNetworkStatus(status) == NetworkStatus.online;
      SecurePrint("status::${appConstants.netConnection.value}");
      SecurePrint("status1::${appConstants.checkNetwork.value}");
    });
  }

  NetworkStatus _getNetworkStatus(ConnectivityResult status) {
    return status == ConnectivityResult.mobile ||
            status == ConnectivityResult.wifi
        ? NetworkStatus.online
        : NetworkStatus.offline;
  }
}

class CheckInternet extends ChangeNotifier {
  String status = 'waiting...';
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  void checkConnectivity() async {
    var connectionResult = await _connectivity.checkConnectivity();
    if (connectionResult == ConnectivityResult.mobile) {
      status = "Connected to MobileData";
      notifyListeners();
    } else if (connectionResult == ConnectivityResult.wifi) {
      status = "Connected to Wifi";
      notifyListeners();
    } else {
      status = "Offline";
      notifyListeners();
    }
  }

  void checkRealtimeConnection() {
    _streamSubscription = _connectivity.onConnectivityChanged.listen((event) {
      switch (event) {
        case ConnectivityResult.mobile:
          {
            status = "Connected to MobileData";
            notifyListeners();
          }
          break;
        case ConnectivityResult.wifi:
          {
            status = "Connected to Wifi";
            notifyListeners();
          }
          break;
        default:
          {
            status = 'Offline';
            notifyListeners();
          }
          break;
      }
    });
  }
}

CheckInternet checkInternet = CheckInternet();
