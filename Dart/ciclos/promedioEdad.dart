import 'dart:io';
void main(){
  int personas;
  int edades=0;
  int person=0;

  print("Ingrese el numero de personas a preguntar");
  personas = int.parse(stdin.readLineSync()!);

  print("Ingrese su nombre:");
   String? nombre = stdin.readLineSync()!;
  

  for (int i=0; i< personas ; i++){
    stdout.write("Ingrese su edad:");
    int edad = int.parse(stdin.readLineSync()!);
    edades += edad;
    person++;
} 
  int promedio= edades~/personas;
  print(" $nombre el promedio de edades es: $promedio");
  print(" la cantidad de personas que se le preguntaron fue: $person");
}