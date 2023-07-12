// simple interest
import 'dart:io';

void main(){

  var SI,p,t,r;
  print("enter p value p:");
  p = int.parse(stdin.readLineSync()!);

  print("enter t value t:");
  t = int.parse(stdin.readLineSync()!);

  print("enter r value r:");
  r = int.parse(stdin.readLineSync()!);

  SI = p*t*r/100;
  print("SI of $SI");

}