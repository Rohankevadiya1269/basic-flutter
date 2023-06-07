void main(){
 var obj= Daughter();
 obj.disp1();
 obj.disp2();

}

abstract class Teacher{
  //define constructor
  //variable
  //Methods
  updateStudent();   // Abstract method
}
class Student extends Teacher{
  //  defining abstract class
 
  @override
  updateStudent() {
    print('I will follow official doc');
  }
} 

// Implicit Interface
// You can inherit multiple parent class
//For inherting multiple parent class you need to use' implement' keyword
// if you are inheriting multiple parents using implements, you should implement every method of the classes you are implementing
// If you don't do so you have to mention your class as abstract class
class Father{
  disp1(){
    print(" I am father class");
  }
}

class Mother{
  disp2(){
    print('I am mother class');
  }
}

class Daughter implements Father,Mother{
  @override
  disp1(){
    print('I am daughter class 1');
  }
  @override
  disp2(){
    print('I am daughter class 2');
  }
}