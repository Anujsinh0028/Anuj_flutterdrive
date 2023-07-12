// square and cube of number

import 'dart:io';

void main(){

  var a,square,cube;
  print("Enter value of a:");
  a=int.parse(stdin.readLineSync()!);

  square= a * a;
  print("square is $square");

  cube = a * a * a;
   print("cube is $cube");

}