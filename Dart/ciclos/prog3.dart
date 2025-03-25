
void main (){
   int a= 10;
   int b =15;
   int i=0;
   int suma=0;
  //  stdout.write("Favor digite valor No. 1: ");
  //  a = int.parse(stdin.readLineSync()!);
  //  stdout.write("Favor digite valor No. 2: ");
  //  b = int.parse(stdin.readLineSync()!);
    for ( i=a; i<=b; i++){
      print(i);
      if (i% 2 ==0){
        suma += i;
      }
   }
   print("La suma de los numeros pares es: $suma");
}