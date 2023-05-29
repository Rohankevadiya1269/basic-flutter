void main() {
// Creating variables
  var name = 'Rohan';
  var college = 'Silver oak';
  var fees = 78000;

// calling and printing variables
  print(name);
  print(college);
  print(fees);

// There are various built-in data types such as int, bool, doubles, strings, list, maps and etc

  int cartitem = 21; //This is an example of int data type
  print(cartitem);

  double price =
      27.99; //The double data type is used to store the decimal values such as price, time,etc
  print(price);

  String country =
      "India"; //The string data type is used to print the sequence of characters. It is usually denoted with single or double quotes
  print(country);

  bool islogin =
      false; // The boolean data type justifies only 2 values true and false
  print(islogin);

  var quantity = 1000;
  var quantity1 = 1000.00;
  var quantity2 = "1000";
  print(quantity);
  print(quantity.runtimeType);
  print("");
  print(quantity1);
  print(quantity1.runtimeType);
  print('');
  print(quantity2);
  print(quantity2.runtimeType);
  /* Ther var method automatically changes the data type acoording to the data
  for example if you enter 1000.00 it will automatically adapt to double
  In case if you have inserted 1000 as 1000kg inside double quotes it will mention data type as string
  you can check the data type using .runtimeType
  */

  // Conditional expression

  var isLogin = true;
  
  /*
  syntax:  condition ? expression 1 : expression 2
  it means if condition is true, perform expression1 and if it's false then perform expression 2
  */
  // ignore: dead_code
  var user = isLogin ? 'Rohan' : 'Guest';
  print(user);

// let's see how to use expession inside string

}
