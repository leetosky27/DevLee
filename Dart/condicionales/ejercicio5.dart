import 'dart:io';
void main (){
  print("Calculador de descuentos \n");

  int valorCompra;
  print("Ingrese el valor de la compra: ");
  valorCompra = int.parse(stdin.readLineSync()!);

  var descuento = valorCompra *10/100;
  var totalAPagar = valorCompra - descuento;
  print("El descuento es: $descuento");
  print("El total a pagar es: $totalAPagar"); 
  
}