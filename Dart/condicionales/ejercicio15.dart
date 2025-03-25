import 'dart:io';
void main() {
  print ("Rango de numeros \n");

  print("Ingresar el minimo: ");
  int  minimo = int.parse(stdin.readLineSync()!);

  print("Ingresar el maximo: ");
  int maximo = int.parse(stdin.readLineSync()!);

  print("Ingresar un numero: entre $minimo y $maximo");
  int numero = int.parse(stdin.readLineSync()!);

  while (numero < minimo || numero > maximo) {
    print("Ingresar un numero: entre $minimo y $maximo");
    numero = int.parse(stdin.readLineSync()!);
  }  

  print("El numero ingresado esta en el rango: $numero");
}