import 'dart:io';
void main (){
  print("Categoria de edad \n");
  String nombre;
  print("Ingrese su nombre: ");
  nombre = stdin.readLineSync()!;

  int edad;
  print("Ingrese su edad: ");
  edad = int.parse(stdin.readLineSync()!); 

  if (edad >= 0 && edad <= 12) {
    print("$nombre esta en la etapa de vida de niño."); 
  } else if (edad >= 13 && edad <= 17) {
    print("$nombre esta en la etapa de vida de adolescente."); 
  } else if (edad >= 18 && edad <= 59) {
    print("$nombre esta en la etapa de vida de adulto."); 
  } else if (edad >= 60) {
    print("$nombre esta en la etapa de vida de anciano."); 
  }
}