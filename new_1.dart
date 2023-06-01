// TO show my progress I'm mentioning dates in this code
//DATE: 29 MAY

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

// let's see how to use variable inside string
  print('');

// DATE:30 MAY
  var uname = "Rohan";
  print(
      '$uname'); //this is illustration of how to use variable in quotes in print function
//to print a variable in quotes you need to add a dollar $ sign before variable
  print('Hello, Greetings to all, My name is $uname');
//you can also use the variable in string just as above expression
//We can also use the variable inside the string using {}
  print('Hello, Greetings to all, My name is ${uname}');
// It is importanta to use {} when you use fuctions, let's understand it by example
  print('');
  print('Hello, Greetings to all, My name is $uname.toUpperCase()');
//It will not interpret the upper case function as a function. Instead it will evaluate it as a string

//So it is necessary to use curly braces whenever using any function in string
  print('');
  print('Hello, Greetings to all, My name is ${uname.toUpperCase()}');

//RAW String
//in case if you need to ignore escape characters you can use r'
  var message = r'In raw string even \n doesnt get any special preference.';
//In this string we've used raw string so it will ignore the escape char \n otherwise it would have printed
//the statement after \n in the next line
  print(message);

//let's see various properties of string
  print('');
  var myname = "Rohan";
  print(myname.toUpperCase()); //Converts mt string to uppercase
  print(myname.toLowerCase()); //Converts mt string to lowercase
  print(myname.length); // Returns the length of the string
  print(myname.isEmpty); // Returns true if my string is empty
  print(myname.isNotEmpty); // Returns true if my string is not empty
  print(myname.contains(
      'h')); //  Returns true if the string contains the mentioned character
  print(' ');
  var message1 = '    Hello, World';
  print(message1.padLeft(
      10)); //your output in console is shown from the extreme left, but using this method you can start from wherever you want
// It gives padding to the output, There is also one more method that is pad right that is used to give padding to the right
  print(message1
      .trimLeft()); // Removes the whitespaces entered by user and starts to print the output from the extreme left
  print(message1.split(' ,')); // It splits the string into you desired pattern

  print('');

//  ---------->  LISTS
// Lists are the data types that contains ordered group of objects which is index based starting from index 0
//it is denoted inside the square brackets

  var lst = List.from(['Rohan', 1000.00, 100, false]);
  print(lst);
  print(lst.runtimeType);
//The above statement tells that the type of the above list is dynamic i.e any data type can be added to it
// such as int, string, doubles,etc
  print(lst[0]);

  var lst1 = ['SEM', 'Rohan', 'Anshul'];
  print(lst1);
  print(lst1.runtimeType);

  var lst2 = [1, 2, 3, 4, 5, 6, 7];
  print(lst2);
  print(lst2.runtimeType);
//If you want to specify the type of list's data type you can use <type> []
  var lst3 = <String>["Rohan", "Krish", "Ayush", "Manan"];
  print(lst3);
  print(lst3.runtimeType);

  var lst4 = <int>[1, 2, 3, 4, 5];
  print(lst4);
  print(lst4.runtimeType);
  print('');
//Methods of list manipulation
//TO print List inside list we use spread operators
//Spread operators are ... listname
  var student = ['Akash', 'Harsh'];
  var fathers = ['Ram', 'Mahesh'];
  var teachers = ['Hetal', 'Vaishali'];
  var linkin = [...student, ...fathers, ...teachers];
  print(linkin);
  print('');
//Now let us see how to enter elements in empty list
//To enter elements in an empty list you can use .add method
  var employee = [];
  employee.add("Virat");
  employee.add("Rohit");
  employee.add("Rahul");
  employee.add("Hardik");
  employee.add("Ravi");
  print(employee);
  print(employee.runtimeType);

//properties of list
  print(employee.length); // returns the length of the list
  print(employee.isEmpty); // returns true if the list is empty
  print(employee.isNotEmpty); // returns true if the list is not empty
  print(employee.reversed); // returns the list in the reverse order
  print(employee.first); // returns the first element of the list
  print(employee.last); // returns the last element of the list

  employee.remove("Rahul"); // It is used to remove the desired element
  print(employee);
  employee.removeAt(2); // You can also remove the element using index
  print(employee);
  print('');

//DATE: 1 June

//   -----------------> SETS
// Set is a unordered collection of unique items
//In list there can be duplicates, But in sets there are not duplicates present
//In the sense elements cannot be repeated. Sets are mentioned in curly braces {}

var st1={1,2,3,'King','Queen'};   //This is an example of set, Which returns the type of it as object as
print(st1);                          // it contains both integers and string
print(st1.runtimeType);

var st2=<String>{'King','Queen'};   // You can also desribe the type of set you want
print(st2);                         // For example we've mentioned string before the set, so it will only accept string 
print(st2.runtimeType);             // and if we'll try to insert integers it will give error

var st3=<int>{1,2,3,4,44};          // Just as we mentioned the string for above example we can also mention for int
print(st3);                         // In this example, it will only accept integers and trying to enter string will give error
print(st3.runtimeType);

//you can also create set by using set keyword
Set st4={"King","Queen",1,2,34};
print(st4);
print(st4.runtimeType);

// Just as list you can also create empty set 

// var st5 ={};
// print(st5);
// print(st5.runtimeType); // In type it shows map data type if you mention like this 

//So to create an empty list you need to mention set keyword
Set st6 = {};
print(st6);
print(st6.runtimeType);
// ## you can also add items in empty sets just like lists
st6.add('Goat');
st6.add('King');
st6.add('Master');
print(st6); 

//Sets can also be manipulated just as lists and has methods almost same as lists
//They include .length, .isEmpty, .isNotEmpty, .reversed, .last, .first, etc
//let us see length ,method illustration
print(st6.length);
print('');

//    ------------------------> MAPS
// Maps is a data type which consists key:value pair
// In maps value can be repeatedgiven that key is unique

var details= {
  "name":"Rohan",
  "city":"Ahmedadbad",
  "state":"Gujarat"
};
print(details);
print(details.runtimeType);
// In maps key can be string or integer and the same goes with values
// You can create empty maps using maps keyword, let us see

//Empty Map
Map address={};
print(address);
print(address.runtimeType);
//This will create dynamic maps, but you can mention the type of dat inside it like
// Map <String,String> address1={};
// print(address1.runtimeType); ( This will create an empty map of key and value both of string datatype)
 
 //We can add items in maps
 address["City"]="Mumbai";
 address["State"]="Maharashtra";
 print(address);
 print(address.runtimeType);

 //Access The map element
 print(address["City"]); // It will return the value of the the key you want to access, Mumbai in this case
print('');
 //## map properties
 print(address.length);     // returns how many key:value pairs it consist
 print(address.isEmpty);    // returns true if the map is empty
 print(address.isNotEmpty); // returns true if the map is not empty
 print(address.keys);       // returns all the keys that are in the map
 print(address.values);     // returns all the values that are present in the map

 // You can also check if the desired key or desired value is present or not
 print(address.containsKey("City"));  // returns true if the name of the key entered is present in the map 
 print(address.containsValue("Maharashtra"));  // returns true if the name of the value entered is present in the map 
print('');

//  ------------> CONTROL FLOW STATEMENT
// IF ELSE
var a = 10;
if(a==10){
  print("The value a is $a");
}else{
  print("Invalid Input");
}
//here the output will be"The value a is 10" because the value of a is 10
// but if the value will not be 10 it will print "Invalid input"

//...If...else if..else statement
var b=20;
if(b==20){
  print("The value of b is 20");
}
else if(b==40){
  print("The value of b is 40");
}
else{
  print("The value of b is neither 20 nor 40");
}
 print('');
// ------------> LOOPS

//#For loop
 var numlist = [1, 2, 3, 4, 5, 6, 7];
 for(int i=0;i<numlist.length;i++){
  print(numlist[i]);
 }
print('');

//## WHILE loop
var numlist1 = [1, 2, 3, 4, 5, 6, 7,8,9,10];
var n=0;
while(n<numlist1.length){
var z=numlist1[n];
print("number $z");
n++;
}
print("");

// ## DO WHILE loop
var names1=["Sai","Hardik","Jayant","Mohit","Rohit","Vijay"];
var k=0;
do{
  print(names1[k]);
  k++;
}while(k<names1.length);

print("");
// ## FOR IN loop

var names2=["Ayush","Om","Smit","Vatsal","Shyam","Krish"];
for(var nam in names2)
{
print(nam);
}
print("");
// For-in loop is used in Sets and Maps
// set
var set1={"rutu","utkarsha","sakshi","Kisha"};
for(var sts in set1){
  print(sts);
}
print("");

var details1={
  "name":"Rohan",
  "city":"Ahmedadbad",
  "state":"Gujarat"
};
for(var key in details1.keys){
  print(key);
}
for(var value in details1.values){
  print(value);
}


}
