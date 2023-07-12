// Addition, Subtraction ,Multiplication and Division using Switch case.

import 'dart:io';

void main(){
  var x,a,b,c;

  print("enter a: ");
  a=int.parse(stdin.readLineSync()!);

  print("enter b: ");
  b=int.parse(stdin.readLineSync()!);

  print(" 1-Addition , 2-Subtraction , 3-Multiplication , 4-Division ");
  print("Select :");
  x=int.parse(stdin.readLineSync()!);

  switch(x){
    case 1:
    c = a+b;
    print("Addition : $c");
    break;

    case 2:
    c = a-b;
    print("Subtraction : $c");
    break;

     case 3:
     c = a*b;
    print("Multiplication : $c");
    break;

     case 4:
     c = a/b;
    print("Division : $c");
    break;

    default:
    {
       print("invalid");
    }
  }
}