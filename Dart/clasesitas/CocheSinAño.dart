class Coche {
  String modelo="";
  String marca = "";
  int anio =0;

  //  constructor 
  Coche (this.modelo, this.marca,  this.anio);
  Coche.sinAnio (this.marca, this.modelo) : anio = 2021;


  mostrarDetalles(){
    print ("El vehiculo es de marca $marca, modelo $modelo, del año $anio");
  }
}

void main (){
  Coche miCoche1 = new Coche ( "Pura Sangre", "Ferrari", 2025);
  Coche miCoche2  = new Coche.sinAnio  ("Tahoe", "Chevrolet");

  miCoche1.mostrarDetalles();
  miCoche2.mostrarDetalles(); 
}