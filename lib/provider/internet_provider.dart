import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetProvider extends ChangeNotifier{
  bool _hasinternet = false;
  bool get hasinternet => _hasinternet;

  InternetProvider() {
    checkInternetConnection();
  }

  Future checkInternetConnection() async {
    var result = await Connectivity().checkConnectivity();
    if(result == ConnectivityResult.none){
      _hasinternet = false;
    }
    else{
      _hasinternet = true;
    }
    notifyListeners();
  }
}