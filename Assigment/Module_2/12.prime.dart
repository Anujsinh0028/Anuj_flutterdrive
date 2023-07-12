import 'dart:io';

void main(){
  var num,i,count=0;

  print("Enter number :");
  num=int.parse(stdin.readLineSync()!);

  for (i=1;i<=num;i++){
    if(num % i == 0){
      count++;
    }
  }

  if(count==2){
    print("prime");
  }
  else{
    print("not prime");
  }




}