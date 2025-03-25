import 'dart:io';
void main (){
  print("Dia de la semana \n ");


  stdout.write("Ingrese un numero (1-7): ");
  int dia = int.parse(stdin.readLineSync()!);

    if (dia == 1) {
      print("El dia es $dia: Lunes");
    } else if (dia == 2) {
      print("El dia es $dia: Martes");
    } else if (dia == 3) {
      print("El dia es $dia: Miercoles");
    } else if (dia == 4) {
      print("El dia es $dia: Jueves");
    } else if (dia == 5) {
      print("El dia es $dia: Viernes");
    } else if (dia == 6) {
      print("El dia es $dia: Sabado");
    } else if (dia == 7) {
      print("El dia es $dia: Domingo");
    } else {
      print("El dia no es valido");
    }
}