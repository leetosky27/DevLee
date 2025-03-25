import 'dart:io';
import 'dart:math';

 void main (){
  int num1=0;
  int num2=0;
  var result;
  int operacion=0;

  stdout.write("Digite la operacion matematica que desea realizar\n 1. Sumar \n 2. Restar \n 3. Multiplicar \n 4. Dividir \n 5. Potencia \n 6. Salir: \n ");
  operacion= int.parse(stdin.readLineSync()!);

while (operacion!=6){
    stdout.write("Escriba el primer numero: ");
  num1= int.parse(stdin.readLineSync()!);

  stdout.write("Escriba el segundo numero: ");
  num2= int.parse(stdin.readLineSync()!);

  if (operacion==6){
    stdout.write("Adios!");
    break;}
  else if (operacion==1){
    result=num1+num2;
    stdout.write("El resultado de la suma es: $result\n");
  }
  else if (operacion==2){
    result=num1-num2;
    stdout.write("El resultado de la resta es: $result\n");
  }
  else if (operacion==3){
    result=num1*num2;
    stdout.write("El resultado de la multiplicacion es: $result\n");
  }
  else if (operacion==4){
    result= num1/num2;
    stdout.write("El resultado de la division es: $result\n");
  }
  else if (operacion==5){
    result=pow(num1, num2).toInt();
    stdout.write("El resultado de la potencia es: $result\n");
  } 
    stdout.write("Digite la siguiente operacion matematica que desea realizar\n 1. Sumar \n 2. Restar \n 3. Multiplicar \n 4. Dividir \n 5. Potencia \n 6. Salir: \n ");
  operacion= int.parse(stdin.readLineSync()!);
}

 }