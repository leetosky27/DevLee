import 'dart:convert';

void main (){
  String jsonString = '{"producto": "Laptop", "precio": 1200.50, "Disponible": true}';

  Map <String, dynamic>  producto = jsonDecode(jsonString);
  print (jsonString);
  print ("El producto es $producto[producto]");
  print ("El precio del producto es $producto[precio]");
  print ("El producto esta disponible $producto[Disponible]");
}