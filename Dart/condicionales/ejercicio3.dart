import 'dart:io';

void main() {
  print("Comprobador de estaciones \n");

  stdout.write("Ingrese el número de dia: ");
  int dia = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el número de mes: ");
  int mes = int.parse(stdin.readLineSync()!);

String obtenerEstacion(int dia, int mes) {
    if ((mes == 3 && dia >= 21) ||
        (mes > 3 && mes < 6) ||
        (mes == 6 && dia <= 20)) {
      return "La estacion de la fecha es: primavera";
    } else if ((mes == 6 && dia >= 21) ||
        (mes > 6 && mes < 9) ||
        (mes == 9 && dia <= 22)) {
      return "La estacion de la fecha es: verano";
    } else if ((mes == 9 && dia >= 23) ||
        (mes > 9 && mes < 12) ||
        (mes == 12 && dia <= 20)) {
      return "La estacion de la fecha es: otono";
    } else {
      return "La estacion de la fecha es: invierno";
    }
  }

  if (dia < 1 || dia > 31 || mes < 1 || mes > 12) {
    print("Error la fecha es invalida. Intentelo de nuevo.");
  } else {
    String estacion = obtenerEstacion(dia, mes);
    print(estacion);
  }
  
}
