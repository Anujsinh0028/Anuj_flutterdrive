// Max number from the given three number using Nested If

import 'dart:io';

void main(){
  var a,b,c;

  print("enter a :");
  a=int.parse(stdin.readLineSync()!);
  print("enter b :");
  b=int.parse(stdin.readLineSync()!);
  print("enter c :");
  c=int.parse(stdin.readLineSync()!);

  if(a>b){
    if(a>c){
      print("a is max");
    }
    else{
      print("c is b is max");
    }

    }
      else if(b>c){
        print("b is max");}
        else{
          print("c is max");
        };
    
  }


