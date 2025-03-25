import 'dart:io';

class Cuenta {
  String nombre = "";
  int doc = 0;
  int cuenta = 0;
  int saldo = 0;

  Cuenta(this.nombre, this.doc, this.cuenta, this.saldo);

   crear() {
    print("Ingrese su nombre: ");
    nombre = stdin.readLineSync()!;

    print("Ingrese su documento: ");
    doc = int.parse(stdin.readLineSync()!);

    print("Ingrese su cuenta: ");
    cuenta = int.parse(stdin.readLineSync()!);

    print("Ingrese su saldo inicial: ");
    saldo = int.parse(stdin.readLineSync()!);

    if (saldo >= 50000) {
      print("La cuenta ha sido creada exitosamente.");
    } else {
      print(
        "El saldo inicial debe ser mayor o igual a 50,000. Inténtelo de nuevo.",
      );
      crear(); 
    }
  }

   depositar() {
    print("Ingrese la cantidad a depositar: ");
    var deposito = int.parse(stdin.readLineSync()!);
    saldo += deposito;
    print("Depósito exitoso. Su nuevo saldo es: $saldo");
  }

   retirar() {
    print("Ingrese la cantidad a retirar: ");
    var retiro = int.parse(stdin.readLineSync()!);
    if (retiro <= saldo) {
      saldo -= retiro;
      print("Retiro exitoso. Su nuevo saldo es: $saldo");
    } else {
      print("Saldo insuficiente.");
    }
  }

   consultarSaldo() {
    print("Su saldo es: $saldo");
  }

   informacionCuenta() {
    print("Nombre: $nombre");
    print("Documento: $doc");
    print("Cuenta: $cuenta");
    print("Saldo: $saldo");
  }
}

void main() {
  var c1 = Cuenta("", 0, 0, 0);
    c1.crear(); 

  print("Ingrese la contraseña de la cuenta: ");
  var contrasena = stdin.readLineSync()!;

  if (contrasena != "12345") {
    print("Contraseña incorrecta.");
    return;
  }

  while (true) {
    print("\nBienvenido al banco");
    print("********************");
    print("1. Depositar");
    print("2. Retirar");
    print("3. Consultar Saldo");
    print("4. Consultar información de la cuenta");
    print("5. Salir");
    print("********************");
    print("Seleccione una opción: ");

    var opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      c1.depositar();
    } else if (opcion == 2) {
      c1.retirar();
    } else if (opcion == 3) {
      c1.consultarSaldo();
    } else if (opcion == 4) {
      c1.informacionCuenta();
    } else if (opcion == 5) {
      print("Saliendo...");
      break;
    } else {
      print("Opción incorrecta. Intente de nuevo.");
    }
  }
}
