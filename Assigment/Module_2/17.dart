// use switch statement. Display Monday to Sunday

import 'dart:io';

void main(){
  var a;
  print("enter a: ");
  a=int.parse(stdin.readLineSync()!);

  switch(a){
    case 1:
    print("monday");
    break;

    case 2:
    print("tuesday");
    break;

    case 3:
    print("wednday");
    break;

     case 4:
    print("thursday");
    break;

     case 5:
    print("friday");
    break;

     case 6:
    print("saturday");
    break;

     case 7:
    print("sunday");
    break;

    default:
    {
       print("invalid");
    }
  }
}