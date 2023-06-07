void main(){
  // ### INHERITANCE
  // Inheritance means to derive a new class from an old class, so that we can have old faeture and new features
  // features here means properties, class member, etc

  // #### Single-Inheritance
  var obj= Son();
  obj.getvalue(150000);
  obj.disp();

}

// Creating parent class| Super-class
class Father{
  late int money;
  getvalue(m){
    money =m;
  }
}
// creating child class| sub-class
// child class can inherit properties from parent class 
class Son extends  Father{
  String car="i10";
  disp(){
    print(car);
    print(money);
  }
}