import 'dart:io';
void main() {

  print("Aprobado o reprobado \n");

  stdout.write("Ingrese el nombre del estudiante: ");
  String? nombre = stdin.readLineSync();
  stdout.write("Ingrese la nota: ");
  int nota = int.parse(stdin.readLineSync()!);

  if (nota >= 0 && nota <= 69) {
    stdout.write("El estudiante $nombre reprobo el examen.\n");
  } else if (nota >= 70 && nota <= 100) {
    stdout.write("El estudiante $nombre aprobó el examen.\n");
  } else{
    stdout.write("La nota ingresada no es válida.\n");
  }
}