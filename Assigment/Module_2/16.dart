// user enter the 5 subjects mark. You have to make a total and find the percentage.

import 'dart:io';

void main(){

  var sub1,sub2,sub3,sub4,sub5,sum,percentage,total;
  print("enter sub1 value :");
  sub1 = int.parse(stdin.readLineSync()!);

  print("enter sub2 value :");
  sub2 = int.parse(stdin.readLineSync()!);

  print("enter sub3 value :");
  sub3 = int.parse(stdin.readLineSync()!);

   print("enter sub4 value :");
  sub4 = int.parse(stdin.readLineSync()!);

   print("enter sub5 value :");
  sub5 = int.parse(stdin.readLineSync()!);

  print("enter total value :");
  total = int.parse(stdin.readLineSync()!);

  sum= sub1+sub2+sub3+sub4+sub5;
  print("sum of 5 subjects $sum");

  percentage = sum/total*100;
  print("percentage is $percentage");

  if(percentage>75){
    print("Distinction");
  }

  else if(percentage > 60 && percentage <= 75){
    print("First class");
  }

  else if(percentage > 50 && percentage <= 60){
    print("second class");
  }

  else if(percentage > 35 && percentage <= 50){
    print("pass class");
  }
  else{
    print("Fail");
  }



}