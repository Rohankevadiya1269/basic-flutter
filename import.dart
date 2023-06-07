import 'colors/black.dart';
import 'colors/green.dart';
// YOu can also import in-built packages from dart
// let us import dart's math package
import 'dart:math';   // We've imported math
void main(){
  // ignore: non_constant_identifier_names
  var  black_obj=Black();
  black_obj.disp();

 // ignore: non_constant_identifier_names
 var  green_obj=Green();
  green_obj.disp();

  print('');

print(sqrt(64)); // It is a built in math method that is used to find out square root of a number

}