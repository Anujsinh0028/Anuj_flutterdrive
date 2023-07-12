// Max number from the given three number using Ternary Operator

import 'dart:io';

void main(){
  var a,b,c;

  print(" a:");
  a=int.parse(stdin.readLineSync()!);

  print(" b:");
  b=int.parse(stdin.readLineSync()!);

  print(" c:");
  c=int.parse(stdin.readLineSync()!);

  (a>b && a>c)? print("$a is max") : (b>c) ? print("$b is max") : print("$c is max");
  
}