import 'dart:io';

void main () {
  print("Temperatura de agua \n");


  stdout.write("Ingrese la temperatura: ");
  double temperatura = double.parse(stdin.readLineSync()!);

  if(temperatura < 0) {
    print("El agua esta en estado solido.");
  } else if(temperatura > 100) {
    print("El agua esta en estado gaseoso.");
  } else   {
    print("El agua esta en estado liquido.");
  
  }
  
}