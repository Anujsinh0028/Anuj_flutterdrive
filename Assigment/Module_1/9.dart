//swap of two No's without using third variable

import 'dart:io';

void main(){
  var a,b;

  print("enter a:");
  a=int.parse(stdin.readLineSync()!);
    print("enter b:");
    b=int.parse(stdin.readLineSync()!);

  a=a+b;
  b=a-b;
  a=a-b;
  print("value a :$a");
  print("value b :$b");
 

}