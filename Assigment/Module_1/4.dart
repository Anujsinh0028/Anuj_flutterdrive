// Area of Circle

import 'dart:io';

void main(){

  var area,pi=3.14,radius;
  print("enter radius value radius:");
  radius = int.parse(stdin.readLineSync()!);

  area = pi*radius*radius;
  print("area of $area");

}