import 'dart:io';

void main (){
int num1 ;
int num2 ;
int res=0;

print("ingrese el primer numero: ");
  num1 = int.parse(stdin.readLineSync()!);

print("ingrese el segundo numero: ");
  num2 = int.parse(stdin.readLineSync()!);

  while (num1 >= num2) {
    num1 -= num2;
    res++;    
  }
      print("El resultado de la division es: $res");
    print("El residuo es: $num1");

}