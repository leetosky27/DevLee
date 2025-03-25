import 'dart:io';
void main (){
  print(" Calculadora de IMC \n");

  stdout.write("Ingrese su peso en kilogramos(numeros): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su altura en metros: ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  if (imc < 18.5) {
    print("Su IMC (indice de masa corporal) es de $imc, usted esta bajo de peso.");
  } else if (imc >= 18.5 && imc < 25) {
    print("Su IMC (indice de masa corporal) es de $imc, usted tiene un peso normal.");
  } else if (imc >= 25 && imc <30) {
    print("Su IMC (indice de masa corporal) es de $imc, usted tiene sobrepeso.");
  } else {
    print("Su IMC (indice de masa corporal) es de $imc, usted tiene obesidad.");
  }

}