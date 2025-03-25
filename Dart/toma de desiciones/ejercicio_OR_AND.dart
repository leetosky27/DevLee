import 'dart:io';

void main() {
  // Pedimos la edad al usuario
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  // Preguntamos si tiene identificación oficial (S/N)
  stdout.write("¿Tienes identificació?: ");
  String tieneID = stdin.readLineSync()!.toUpperCase();

  // Convertimos la respuesta a un valor booleano
  bool identificacionValida = (tieneID == "SI");

  // Condición para ingresar al evento
  if (edad >= 18 && identificacionValida) {
    print("✅ Puedes ingresar al evento.");
  } else {
    print("❌ No puedes ingresar al evento.");
  }

  // Ejemplo adicional con OR
  if (edad >= 18 || identificacionValida) {
    print("🔹 Tienes al menos una condición cumplida.");
  } else {
    print("🔹 No cumples ninguna condición.");
  }
}
