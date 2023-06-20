// This code is an example of name conflict
// 1st step is usual import
import 'products/mobile.dart' as mob;
import 'products/laptop.dart' as lap;
// Consider that a file consist numerous property but you need to import some specific properties
// so for that purpose use "show" keyword
// for example if there is a file called user.dart consisting usernames of an app, that consist numerous users
// Let us see that if we need to see only users having name rahul

// import 'app/users.dart' shows rahul;

// But what if we need to all users except rahul, then we use 'hide' keyword
// import 'app/users.dart' hide rahul;

// In this code name conflict will take place as in both the mobile and laptops samsung is defined in the library
//so to handle it, at the import process name it something else by using 'as' key word
void main() {
  //samsung(); when you try this when you are not using as keyword, it will give error
  mob.samsung();
  lap.samsung();
}
