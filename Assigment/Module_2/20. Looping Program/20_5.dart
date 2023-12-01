// print the table of given number

import 'dart:io';

void main(){

  var n,i;
  print("Enter n:");
  n=int.parse(stdin.readLineSync()!);

  for(i=1;i<=10;i++){

   print('$n * $i = ${n * i}');
  }
}