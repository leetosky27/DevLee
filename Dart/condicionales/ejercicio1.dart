import 'dart:io';
void main (){
  print ("Verificacion de edad para votar");
int edad;
  print("Ingrese su edad: ");
  edad = int.parse(stdin.readLineSync()!); 

  if (edad >= 18) {
    print("✅ Usted puede votar.");
  } 
  else {
    print("❌Usted no puede votar. Debe ser mayor de edad para votar.");
  }

} 