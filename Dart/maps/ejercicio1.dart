void main() {
 Map<String, int> edades = {'Ana': 20, 'Juan': 25};
 edades.addAll({'María': 22});
//  edades.remove('Ana');
 print(edades.containsKey('Juan')); // true
 print(edades.keys); // (Juan, María)
 edades.forEach((clave, valor) => print('$clave tiene $valor años'));
}