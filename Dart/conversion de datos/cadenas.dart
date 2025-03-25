import 'dart:io';
void main(){
  //capturar datos de consola
  stdout.write("Por favor, introduce tu nombre:");
  String? nombre = stdin.readLineSync()!;

    // mostrar los datos capturados
  if (nombre.length <= 0){
  print (" la cadena esta vacia. Introduzca un nombre valido.");
  } else if(nombre.length > 1) {
    print ("Hola, ${nombre}!, la posicion #5 de su nombre es ${nombre.toUpperCase()[4]}");
  }
  print ("La longitud de su nombre es de ${nombre.length} letras" );
  print("Su nombre en mayusculas es ${nombre.toUpperCase()}");
  print("Su nombre en minusculas es ${nombre.toLowerCase()}");



}