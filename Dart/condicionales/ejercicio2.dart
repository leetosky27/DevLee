import "dart:io";
void main (){
print("Clasificacion de numeros \n");

  stdout.write("Ingrese un numero: ");
  
  int num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("El numero es positivo: $num");
  } else if (num < 0) {
    print("El numero es negativo: $num");
  } else {
    print("El numero es cero: $num");
  }
}