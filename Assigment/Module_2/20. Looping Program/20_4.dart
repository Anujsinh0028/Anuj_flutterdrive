//Fibonacci series up to user given number

import 'dart:io';

void main(){
  int n1,n2,A;

  print("enter n1:");
  n1=int.parse(stdin.readLineSync()!);

  print("enter n2:");
  n2=int.parse(stdin.readLineSync()!);

  print(n1);
    print(n2);

  for(int i=1;i<=10;i++){
    
   A = n1+n2;
    print('$A');
    n1 = n2;
    n2 = A;

  }
}

