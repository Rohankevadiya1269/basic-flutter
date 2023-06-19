// ## --->  Method overriding
// Method overriding is used when the sub-class is inheriting a property, but wants to modifying or implement methods of its own

class Animal {
  late String sound;
  animalsound(s){
    sound="Animal Sound";
  }
  disp(){
    print(sound);
  }
}

class Cat extends Animal{
  
  @override
  animalsound(s) {
    sound = s;
  }
  @override
  disp() {
    print(sound);
  }
}

class Dog extends Animal{
 
  @override
  animalsound(s) {
    sound = s;
  }
  @override
  disp() {
    print(sound);
    print('');
  }
}


// #### SUPER keyword 
class Father{
  int money=5000;

}
class Son extends Father{
 int money=3500;
 disp(){
  print('This is Sub-Class');
  print(money);           // If we mention money in print statement it will print value of money in child class
  //but what i9f we need to acess the value of money from parent class
  // Use " super " keyword
  print(super.money);   // This will print the value of money from parent class
 }
}

// ABSTRACT CLASS
// while there is need of creatring an object for normal class, there is no need to define any object here
// Abstract class is blue print of classes





void main() {
  var obj1 = Cat();
  obj1.animalsound("meow");
  obj1.disp();

  var obj2 = Dog();
  obj2.animalsound("bark");
  obj2.disp();

  var s_obj=Son();
  s_obj.disp();
}
