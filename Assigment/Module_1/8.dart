// sum of 5 subjects & find the percentage. Subject marks entered by user
import 'dart:io';

void main(){

  var sub1,sub2,sub3,sub4,sub5,sum,percentage,total;
  print("enter sub1 value sub1:");
  sub1 = int.parse(stdin.readLineSync()!);

  print("enter sub2 value sub2:");
  sub2 = int.parse(stdin.readLineSync()!);

  print("enter sub3 value sub3:");
  sub3 = int.parse(stdin.readLineSync()!);

   print("enter sub4 value sub4:");
  sub4 = int.parse(stdin.readLineSync()!);

   print("enter sub5 value sub5:");
  sub5 = int.parse(stdin.readLineSync()!);

  print("enter total value total:");
  total = int.parse(stdin.readLineSync()!);

  sum= sub1+sub2+sub3+sub4+sub5;
  print("sum of 5 subjects $sum");

  percentage = sum/total*100;
  print("percentage is $percentage");

}