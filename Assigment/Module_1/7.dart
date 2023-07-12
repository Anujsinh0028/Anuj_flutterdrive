//centigrade to Fahrenheit.
import 'dart:io';

void main(){

  var centigrade,Fahrenheit;
  print("enter centigrade value centigrade:");
  centigrade = int.parse(stdin.readLineSync()!);

  Fahrenheit = (centigrade * 1.8)+32;
  print("Fahrenheit of $Fahrenheit");

}