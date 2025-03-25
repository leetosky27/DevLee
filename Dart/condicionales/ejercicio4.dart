import 'dart:io';

void main() {
  print("Validacion de contraseña \n");


  stdout.write("Introduce una contraseña: ");
  String? contrasena = stdin.readLineSync();

bool verificarContrasena(String contrasena) {
  // Verifica la longitud
  if (contrasena.length >= 9) {
    print("La contraseña debe tener al menos 8 caracteres.");
  }
  else if (!RegExp(r'[A-Z]').hasMatch(contrasena)) {
    print(" La contraseña debe contener al menos una letra mayúscula.");
  }

  else if (!RegExp(r'[a-z]').hasMatch(contrasena)) {
    print("La contraseña debe contener al menos una letra minúscula.");
  }

  else if (!RegExp(r'[0-9]').hasMatch(contrasena)) {
    print("La contraseña debe contener al menos un número.");
  }

  else if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(contrasena)) {
    print("La contraseña debe contener al menos un carácter especial.");
  } else
  print("La contraseña es segura.");
  return true;
}
  if (contrasena != null) {
    verificarContrasena(contrasena);
  } else {
    print("No se ingresó una contraseña.");
  }
}
