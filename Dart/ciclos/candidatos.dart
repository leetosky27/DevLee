import 'dart:io';
void main (){
  int can1 =0;
  int can2 =0;
  int votoBlanco=0;
  int votos=0;
  int aprendices;
  int voto;

  stdout.write("Ingrese el numero de aprendices a votar: ");
  aprendices = int.parse(stdin.readLineSync()!);


for (int i=0; i< aprendices ; i++){
    stdout.write("Ingrese un voto (1 para candidato 1) (2 para candidato 2) (3 para voto en blanco): ");
  voto = int.parse(stdin.readLineSync()!);

  if(voto == 1){
    can1++;
  }else if(voto == 2){
    can2++;
  } else if(voto == 3){
    votoBlanco++;
  } 
  votos++;
} 
  if (can1> can2 && can1> votoBlanco){

    print("El candidato 1 gano con $can1 votos: ");
    print("El candidato 2 obtuvo $can2 votos: ");
    print("El voto en blanco fue de $votoBlanco votos: ");
    print("Total de votos $votos: ");
  
  } else if (can2> can1 && can2 > votoBlanco){
    print("El candidato 2 gano con $can2 votos: ");
    print("El candidato 1 obtuvo $can1 votos: ");
    print("la cantidad de votos de voto en blanco fue de $votoBlanco votos: ");
    print("Total de votos $votos: ");
  } else if ( can1 == can2){
    print("Hubo un empate entre los candidatos con $can1 y $can2 votos: ");
    print("La cantidad de votos de voto en blanco fue de $votoBlanco votos: ");
    print("Total de votos $votos: ");
  }else{
    print("Gano el voto en blanco con $votoBlanco votos, se cambian candidatos: ");
    print("El candidato 1 obtuvo $can1 votos: ");
    print("El candidato 2 obtuvo $can2 votos: ");
    print("Total de votos $votos: ");
  }
}