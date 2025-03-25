class Coche {
  String modelo="";
  String marca = "";
  int anio =0;

  //  constructor 
  Coche (this.modelo, this.marca,  this.anio);

  mostrarDetalles(){
    print ("El vehiculo es de marca $marca, modelo $modelo, del año $anio");
  }
}
void main (){
  Coche miCoche = new Coche ( "Pura Sangre", "Ferrari", 2025);
  miCoche.mostrarDetalles();
}