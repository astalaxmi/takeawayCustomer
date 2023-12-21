import 'package:flutter/foundation.dart';

class SecurePrint{
  SecurePrint(dynamic message){
    if(kDebugMode){
      print(message);
    }
  }
}