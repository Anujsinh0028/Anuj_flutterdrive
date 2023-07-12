//check the given number is Positive, Negative.

import 'dart:io';

void main(){

  var a;
  print("Enter value a:");
  a=int.parse(stdin.readLineSync()!);

  (a>=0)? print("$a is positive") : print("$a is negative");


}