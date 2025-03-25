import 'dart:io';

void main() {
  String email = "misterlee272006@gmail.com";
  String password = "1141714794";
  String email2;
  String pass2;

  stdout.write("Ingrese el usuario: ");
  email2 = stdin.readLineSync()!;
  stdout.write("Ingrese la contrasena: ");
  pass2 = stdin.readLineSync()!;

  if (pass2.length < 8) {
    print("La contrasena debe tener al menos 8 caracteres");
  }

  if (email == email2 && password == pass2) {
    print("Bienvenido");
  } else {
    print("Usuario o contrasena incorrectos");
  }
}
