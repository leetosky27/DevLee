import 'dart:io';
import 'dart:math';

void main (){
  int pc = Random().nextInt(9) + 1 ;
  print("Ingrese su numero para la rifa:");
  int num = int.parse(stdin.readLineSync()!);

  if (num == pc) {
    print("Felicidades, ganaste!, el iphone a usarlo \nEl numero ganador es: $pc \n su numero fue: $num");

  } else if (num > pc) {
    print("El numero ganador es: $pc \n su numero fue: $num \n El numero elegido es mayor al numero ganador");
    
  } else if(num < pc) {
    print("El numero ganador es: $pc \n su numero fue: $num \n El numero elegido es menor al numero ganador");
    

  }
}