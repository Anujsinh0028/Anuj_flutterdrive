// find out the Area of Triangle, Rectangle and Circle using If Condition

// import 'dart:html';
import 'dart:io';

void main(){

  print("1. Area of Circle");
  print("2. Area of Triangle");
  print("3. Area of Rectangle");
  print("");
  
  print("Enter Choice: ");
  int i =int.parse(stdin.readLineSync()!);

  if(i==1){
  print("Selected Area of Circle");

  var pi=3.14;
  print("Enter radius value radius:");
  var radius = int.parse(stdin.readLineSync()!);

  var Area = pi*radius*radius;
  print("Area of $Area");
  
  }

  else if(i==2){
  print("Selected Area of Triangle  ");

  print("Enter Height: ");
  int Height = int.parse(stdin.readLineSync()!);

  print("Enter base: ");
  int base = int.parse(stdin.readLineSync()!);

  var Area = Height*base/2;
  print("Area of Triangle : $Area");


  }
  else if(i==3){
     print("Selected Area of Rectangle");

     print("Enter Length: ");
     int length = int.parse(stdin.readLineSync()!);

     print("Enter Width: ");
     int Width = int.parse(stdin.readLineSync()!);

     var Area = length*Width;
     print("Area of Rectangle : $Area");
  }
}