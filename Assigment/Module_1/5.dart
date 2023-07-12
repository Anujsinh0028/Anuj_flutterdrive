// Area of Triangle

import 'dart:io';

void main(){

  var area,base,height;
  print("enter height value height:");
  height = int.parse(stdin.readLineSync()!);

  print("enter base value base:");
  base = int.parse(stdin.readLineSync()!);

  area = height*base/2;
  print("area of $area");

}