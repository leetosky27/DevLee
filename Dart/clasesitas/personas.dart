class Personas{
  // el constructor debe ser el mismo nombre que la clase

  String nombre ="";
  int edad = 0;
// contructor
  Personas (this.nombre, this.edad);

  mostrar()
  {
    print("Nombre: $nombre, edad $edad");
  }
}
void main (){
  Personas  per = Personas("marcos", 18);
  per.mostrar();
  print(per.nombre);
}