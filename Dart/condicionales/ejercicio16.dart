import 'dart:io';

void main () {
  print ("Tipo de triangulo \n");
  int logitud1;
  int logitud2;
  int logitud3;

  print("Ingresar la logitud del lado 1:");
  logitud1 = int.parse(stdin.readLineSync()!);

  print("Ingresar la logitud del lado 2:");
  logitud2 = int.parse(stdin.readLineSync()!);

  print("Ingresar la logitud del lado 3:");
  logitud3 = int.parse(stdin.readLineSync()!);
  // Validar que los lados formen un triangulo
  if (logitud1 + logitud2 <= logitud3 || logitud1 + logitud3 <= logitud2 || logitud2 + logitud3 <= logitud1) {
    print("Los lados no forman un triangulo.");
    return;
  }
  // Validar que los lados no sean negativos o cero
  if (logitud1 <= 0 || logitud2 <= 0 || logitud3 <= 0) {
    print("Los lados no pueden ser negativos o cero.");
    return; 
  }
// Validar el tipo de triangulo
  if (logitud1 == logitud2 && logitud2 == logitud3) {
    print("El triangulo es equilatero (Todos los lados son iguales)");
  } else if (logitud1 == logitud2 || logitud2 == logitud3 || logitud1 == logitud3) {
    print("El triangulo es isosceles (Dos de sus tres lados son iguales)");
  } else {
    print("El triangulo es escaleno (Todos sus lados son diferentes)");
  }
}