import 'dart:io';

void main(){
  var a;

  print("Enter year :");
  a=int.parse(stdin.readLineSync()!);

  (a%4==0) ? print("$a is leap year") : print(" $a is not leap year");
}