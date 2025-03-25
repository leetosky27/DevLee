import 'dart:io';
void main () {
  int valorCompra;
   print("Ingrese el número de documento: ");
  int doc = int.parse(stdin.readLineSync()!); 

  stdout.write("Ingrese su nombre: ");
  String ? nombre = stdin.readLineSync();

  if (nombre == null) {
    print('No se ha ingresado nombre.');
    return;
  } 

  print('Ingrese el valor de la compra: ');
  valorCompra = int.parse(stdin.readLineSync()!); 
  
  var iva = valorCompra *1.19;
  
  var valorIva = iva - valorCompra ;
 
  var descuento = iva *10/100 ; 
  
  final valorTotal = iva - descuento ;
  
  print ("Su documento es: $doc");
  print ("Su nombre es: $nombre");
  print ("El valor del iva es: $valorIva");
  print ("El valor del descuento es: $descuento");
  print ("El valor total a pagar es: $valorTotal");

  

}