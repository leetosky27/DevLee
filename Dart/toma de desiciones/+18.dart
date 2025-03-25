import 'dart:io';
void main (){
  stdout.write("digite edad");

String? dato = stdin.readLineSync();
int edad = int.parse(dato!); 

  if (edad > 18) {
    print("usted es Mayor de edad");
  }
}