void main (){
  int I=0;
  int NI=0;
  for (int z = 0;  z<10; z++){

  if (z >=5  && z <=6){
    print(z);
     I=I+1;
  }else
    NI=NI+1;

  }
    print("La cantidad de impresos es: $I");
    print("La cantidad de no impresos es: $NI");
}