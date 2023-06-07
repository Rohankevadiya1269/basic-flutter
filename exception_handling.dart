// Exception Handling
// ignore_for_file: deprecated_member_use

void main(){
  // Let us first occur an exception
  // for example if we divide any number with zero there should occur an exception


//   var result=4~/0;
//   print(result);
// the above operation gives us exception called 'IntegerDivisionByZeroException'
// TO handle it we should try solving it by try and catch method

//  Try on method
//   try {
//     var result=4~/0;
//     print(result)    ;
//   }on 
//   IntegerDivisionByZeroException{
//     print('Cannot divide by zero');
//   }

//   // Using try-catch method
//   try{
//      var result=4~/0;
//     print(result) ;
//   }catch(e){
//     print(e);
//     print('Cannot divide a number by zero');
//   }
//  // you can also use try-on-catch all together
 //there is also a finally keyword which is performed anyhow, If the exception ocuurs or even if it doesn't occur
 try{
     var result=4~/0;
    print(result) ;
  }catch(e){
    print(e);
    print('Cannot divide a number by zero');
  }finally{
    print('Finally executes always');
  }

}