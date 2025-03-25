class Coche {
String modelo="";
String marca  = "";
int anio =0;
int kilometraje=175;

Coche(this.marca, this.modelo, this.anio);

 mostrarDetalles(){
  print ("La marca del carro es $marca de modelo $modelo del año $anio");
 }
 viajar (int distancia){
  kilometraje += distancia;
  print ("Has recorrido $kilometraje kilometros");
 }
}
void main(){
Coche miCoche = new Coche ("Ferrari", "Pura sangre", 2025);
miCoche.mostrarDetalles();
  
miCoche.viajar(150);  
miCoche.mostrarDetalles();

}

