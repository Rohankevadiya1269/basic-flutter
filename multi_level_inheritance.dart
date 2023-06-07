// Multi_level inheritance
// It is a type of inheritance that inherits the property from the parent and grand parent class
// Just like a son inherits qualities from father and a grandson who inherits the qualities both from
// son and father. It also has its own qualities too 

void main() {
  var obj = Grandson();
  obj.getvalue(1000000);
  obj.disp();
}
//Parent-class
class Father {
  late int money;
  getvalue(m) {
    money = m;
  }
}
//child-class
class Son extends Father {
  String car = "S-300";
  // ignore: non_constant_identifier_names
  int bank_balance = 550000;
  //ignore: non_constant_identifier_names
  total_money() {
    return bank_balance + money;
  }
}
//garndchild-class
class Grandson extends Son {
  String bike = "Suzuki Hayabusa";
  disp() {
    print(car);
    print(bike);
    print(total_money());
  }
}
