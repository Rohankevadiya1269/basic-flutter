import 'package:flutter/foundation.dart';

// To learn provider here we are making a class that consists the method count
// After the count method we are incrementing the count 
// This increment method will be used in the onchange method of the floating button
class CounterExample extends ChangeNotifier{
  int _count = 0;
  int get count => _count;
  int _cnt =0;
  int get cnt => _cnt;

  void setIncrement(){
    _count++;
    notifyListeners();
  }
  void incrementCnt(){
    _cnt++;
    notifyListeners();
  }
}