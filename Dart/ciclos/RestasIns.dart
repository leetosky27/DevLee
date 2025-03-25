import 'dart:io';
void main (){
  int a = 0;
  int b = 0;
  int r = 0;

  print (" ingrese numero 1: ");
  a = int.parse(stdin.readLineSync()!);

  print ("ingrese numero 2: ");
  b = int.parse(stdin.readLineSync()!);
  while (a>=b)  
  {
    r = a -b ;
    a = r;  
  }
}