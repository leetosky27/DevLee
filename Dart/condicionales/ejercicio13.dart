import 'dart:io';

void main() {
print(
  "Verificador de horario laboral \n");

  stdout.write("Ingrese la hora (00-23): ");
  int hora = int.parse(stdin.readLineSync()!);

  // Verificar si la hora es válida
  if (hora < 0 || hora > 23) {
    print("Error: La hora ingresada no es válida.");
    return;
  }

  // Comprobar si está en horario laboral (8 AM - 5 PM)
  if (hora >= 8 && hora < 17) {
    print("La hora ingresada está dentro del horario laboral.");
  } else {
    print("La hora ingresada está fuera del horario laboral.");
  }
}
