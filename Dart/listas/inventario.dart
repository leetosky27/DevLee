import 'dart:io';
var inventario = [];

void main (){
 while (true){
  print("Menú");
  print("*********************************");
  print("1. Agregar producto");
  print ("2. Eliminar producto");
  print ("3. Mostrar");
  print ("4. Salir");
  print("*********************************");

  stdout.write("Ingrese una opcion: ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1){
    agregar();
  }else if(opcion == 2) {
    eliminar();
  }else if (opcion == 3) {
    mostrar();
  } else if (opcion == 4) {
    print("Saliendo...");
    break;
  } else {
    print("Opción inválida. Intente nuevamente.");
}
 }
 }
void agregar() {
//agregar
  stdout.write(" Ingrese el producto ");
  String? producto = stdin.readLineSync()!;
  stdout.write(" Ingrese el precio ");
  int precio = int.parse(stdin.readLineSync()!);

  inventario.add({"nombre": producto, "precio": precio});
  print("Producto agregado con éxito");
}
 
void eliminar() {

  stdout.write(" Ingrese el producto a eliminar: $inventario: ");
  String? nombreEliminar = stdin.readLineSync()!;
  
  for (final producto in inventario){
    if (producto["nombre"] == nombreEliminar){
      inventario.remove(producto);
      print("Producto eliminado con éxito");
      return;
    }
     else {
      print("Producto no encontrado");
     }
  }


}
 void mostrar(){
  print ("inventario");
  stdout.write("Ingrese el nombre a mostrar: ");
  String? nombreMostrar = stdin.readLineSync()!;

  for (final producto in inventario){
    if (producto["nombre"] == nombreMostrar){
      print("Producto: ${producto['nombre']}, Precio: ${producto['precio']}");
    }
  }

 }
 