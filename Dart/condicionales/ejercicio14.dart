import 'dart:io';

void main () {
print ("Conversor de unidades \n");

stdout.write("Ingrese la cantidad a convertir: ");
  double cantidad = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la unidad de origen(mm, cm, m, km): ");
  String unidadOrigen = stdin.readLineSync()!;

  stdout.write("Ingrese la unidad a convertir(mm, cm, m, km): ");
  String unidadDestino = stdin.readLineSync()!;

  // Verificar si las unidades de origen y destino son iguales y si son de otras unidades
  if (unidadOrigen == unidadDestino) {
    print("Las unidades ingresadas son iguales.");
  } if (unidadOrigen != "mm" && unidadOrigen != "cm" && unidadOrigen != "m" && unidadOrigen != "km") {
    print("La unidad de origen ingresada no es valida.");
  } if (unidadDestino != "mm" && unidadDestino != "cm" && unidadDestino != "m" && unidadDestino != "km") {
    print("La unidad de destino ingresada no es valida.");

  // Realizar la conversion según el factor de conversión
  double factorConversion = 1.0;
  if (unidadOrigen == "mm") {
    if (unidadDestino == "cm") {
      factorConversion = 0.1;
    } else if (unidadDestino == "m") {
      factorConversion = 0.001;
    } else if (unidadDestino == "km") {
      factorConversion = 0.000001;
    }

  } else if (unidadOrigen == "cm") {
    if (unidadDestino == "mm") {
      factorConversion = 10.0;
    } else if (unidadDestino == "m") {
      factorConversion = 0.01;
    } else if (unidadDestino == "km") {
      factorConversion = 0.00001;
    }

  } else if (unidadOrigen == "m") {
    if (unidadDestino == "mm") {
      factorConversion = 1000.0;
    } else if (unidadDestino == "cm") {
      factorConversion = 100.0;
    } else if (unidadDestino == "km") {
      factorConversion = 0.001;
    }

  } else if (unidadOrigen == "km") {
    if (unidadDestino == "mm") {
      factorConversion = 1000000.0;
    } else if (unidadDestino == "cm") {
      factorConversion = 100000.0;
    } else if (unidadDestino == "m") {
      factorConversion = 1000.0;

    }
  }
  double resultado = cantidad * factorConversion;
  print("El resultado es: $resultado $unidadDestino");
  }
  
}