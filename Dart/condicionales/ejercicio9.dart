import 'dart:io';

void main() {
  print("Numerp par o impar \n");

  stdout.write("Ingrese un número: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero == 0) {
    print("El número es $numero.\n");
  } else if (numero % 2 == 0) {
    print("El número $numero es par.\n");
  } else {
    print("El número $numero es impar.\n");
  }
}
