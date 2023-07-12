//addition, Subtraction, Multiplication and Division of Two Numbers

import 'dart:io';
void main(){
   var num1,num2,total;
  print("Addition");
  print("number 1 is :");
  num1 = int.parse(stdin.readLineSync()!);
   print("number 2 is :");
  num2 = int.parse(stdin.readLineSync()!);

  total = num1 + num2;
  print("addition is $total");

  total = num1 - num2;
  print("Subtraction is $total");

  total = num1 * num2;
  print("Multiplication is $total");

  total = num1 / num2;
  print("Division is $total");
  

  

}