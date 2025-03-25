import 'dart:io';
void main() {
  int a;
  int b;

  stdout.write("Ingrese el primer numero: ");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo numero: ");
  b = int.parse(stdin.readLineSync()!);

  if (a > b) {
    print("No es posible hallar el rango, El primer numero debe ser menor al segundo");
  }

  for (a=a ; a < b; a++) {
    print(a);
  }
  print(a);


}