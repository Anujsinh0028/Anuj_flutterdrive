import 'dart:io';

void main(){
  int i,n,factorial =1;
  
  print("enter num: ");
  n=int.parse(stdin.readLineSync()!);
   
  for(i=1;i<=n;i++){
    factorial*=i;  
  }

  print(factorial);

}