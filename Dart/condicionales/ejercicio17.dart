import 'dart:io';
void main() {
  print("Calculadora de impuestos \n");
  stdout.write("Ingrese el monto de la compra: ");
  double monto = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el país: ");
  String pais = stdin.readLineSync()!.toLowerCase();

  double impuesto = 0.0;

  if (pais == "colombia") {
    impuesto = monto * 0.19;
  } else if (pais == "venezuela") {
    impuesto = monto * 0.15;
  } else if (pais == "argentina") {
    impuesto = monto * 0.21;
  } else if (pais == "peru" || pais == "ecuador") {
    impuesto = monto * 0.25;
  } else if (pais == "chile" ||
      pais == "bolivia" ||
      pais == "paraguay" ||
      pais == "uruguay") {
    impuesto = monto * 0.20;
  } else if (pais == "mexico") {
    impuesto = monto * 0.16;
  } else if (pais == "estados unidos") {
    impuesto = monto * 0.07;
  }
  double totalPagar = monto + impuesto;

  print("El monto es: $monto");
  print("El impuesto es: $impuesto");
  print("El total a pagar es: $totalPagar");
}

