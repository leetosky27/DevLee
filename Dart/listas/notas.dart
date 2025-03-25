void main (){
  List<double> notas = [85.5, 90.0, 78.3, 92.1];
// calcular  promedio
  double suma = notas.reduce((a,b) => a + b);
  double promedio = suma / notas.length;
  print("Promedio: $promedio");

  // Encontrar la nota mas alta
  double maxNota = notas.reduce((a,b)=> a > b ? a : b);
  print (' nota mas alta: $maxNota');

  //filtrar aprobados (mayor o igual a 70)

  var aprobados = notas.where ((nota) => nota >= 70).toList();
  print ('Aprobados: $aprobados'); 
}