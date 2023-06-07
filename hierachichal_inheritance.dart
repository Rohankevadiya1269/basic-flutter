// This is hierarchichal inheritance
// It also contains more than one child class
// But wherin Multi-level inheritance there was child and grand child class bvoth are at different level
// In hierarchichal inheritance there are more than one child class at same level, like son and daughter

void main(){

  // object created for son-class
 // ignore: non_constant_identifier_names
 var s_obj=Son();
 s_obj.getvalue(150000);
 s_obj.disp();

 //object created for daughter-class
 // ignore: non_constant_identifier_names
 var d_obj=Daughter();
 d_obj.getvalue(800000);
 d_obj.disp();
}
//parent_class
class Father{
  late int money;
  getvalue(m){
    money=m;
  }
}

//son_class
class Son extends Father{
  String bike="Kawasaki Ninja";
  disp(){
    print("This is Son of child class");
    print('Son will $money amount');
    print(bike);
    print("");
  }
}


//daughter_class
class Daughter extends Father{
  String car="Bentley Flying Spur";
  disp(){
    print("This is Daughter of child class");
    print('Daughter will get $money amount');
    print(car);
  }
}