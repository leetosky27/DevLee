import "dart:io";

var contactos = [];
void main() {
  while (true) {
    print("Contact");
    print("****************************************************************");
    print("1. Crear Contacto");
    print("2. Buscar Contactos");
    print("3. Editar Contacto");
    print("4. Eliminar Contacto");
    print("5. Salir");
    print("****************************************************************");

    stdout.write("Ingrese una opcion: ");
    int opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      crearContacto();
    } else if (opcion == 2) {
      buscarContacto();
    } else if (opcion == 3) {
      editarContacto();
    } else if (opcion == 4) {
      eliminarContacto();
    } else if (opcion == 5) {
      print("Saliendo...");
      break;
    } else {
      print("Opcion invalida. Intente nuevamente.");
    }
  }
}

void crearContacto() {
  stdout.write("Ingrese el nombre del contacto: ");
  String? nombre = stdin.readLineSync()!;

  stdout.write("Ingrese el numero de telefono del contacto: ");
  String? telefono = stdin.readLineSync()!;

  contactos.add({"nombre": nombre, "numero": telefono});

  print("Contacto creado con exito.");
}

void buscarContacto() {
  stdout.write("Ingrese el nombre del contacto a buscar $contactos: ");
  String? nombre = stdin.readLineSync();
  for (final contacto in contactos) {
    if (contacto == nombre) {
      print(contacto);
    }
  }
}

void editarContacto() {
  stdout.write("Ingrese el nombre del contacto a editar $contactos: ");
  String? nombre = stdin.readLineSync();

  for (final contacto in contactos) {
    if (contacto["nombre"] == nombre) {
      stdout.write("Digite una opcion: \n1. Nombre \n2. Telefono:" );
      String opcion = stdin.readLineSync()!;
      if (opcion == "1") {
        stdout.write("Ingrese el nuevo nombre: ");
        String? nuevoNombre = stdin.readLineSync();
        contacto["nombre"] = nuevoNombre;
        print("Nombre editado con exito. $nuevoNombre");
      } else if (opcion == "2") {
        stdout.write("Ingrese el nuevo numero: ");
        String? nuevoTelefono = stdin.readLineSync();
        contacto["numero"] = nuevoTelefono;
        print("Telefono editado con exito. $nuevoTelefono");
      } else {
        print("Opcion invalida. Intente nuevamente.");
    }
    print ("Contacto Modificado $contacto");
  }
}
}
void eliminarContacto() {
  stdout.write("Ingrese el nombre del contacto a eliminar $contactos: ");
  String? nombre = stdin.readLineSync();
  for (final contacto in contactos) {
    if (contacto["nombre"] == nombre) {
    stdout.write("¿Seguro que desea eliminar el contacto?/n1. Si/n2. No: ");
    String opcion = stdin.readLineSync()!;
    if (opcion == "1") {
      contactos.remove(contacto);
      print("Contacto eliminado con exito.");
      break;
    }else if (opcion == "2") {
      print("Contacto no eliminado.");
      break;
      } else {
      print("Opcion invalida. Intente nuevamente.");
    }}else{
      print("Contacto no encontrado. Intente nuevamente.");
    }
  }
}
