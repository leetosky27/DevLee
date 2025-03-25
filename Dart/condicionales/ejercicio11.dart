import 'dart:io';
void main (){
  print("Chequeador de divisibilidad \n");

  stdout.write("Ingrese el primer numero: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo numero: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num2 ==0){
    print("No se puede dividir por cero.");
    return;
  }
  if (num1 % num2 == 0){
    print("$num1 es divisible por $num2");
  } else {
    print("$num1 no es divisible por $num2");
  } 
}