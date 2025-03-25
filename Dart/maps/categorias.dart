void main() {
  // 1. Crear un mapa con categorías y listas de notas
  Map<String, List<int>> nCategoria = {
    'Matemáticas': [85, 90, 78],
    'Programación': [92, 88, 95],
    'Historia': [75, 80, 72]
  };

  // 2. Calcular el promedio de notas por categoría
  Map<String, double> promedios = {};

  nCategoria.forEach((categoria, notas) {
    double promedio = notas.reduce((a, b) => a + b) / notas.length;
    promedios[categoria] = promedio;
  });

  // 3. Imprimir los promedios
  print("Promedio de notas por categoría:");
  promedios.forEach((categoria, promedio) {
    print("$categoria: ${promedio.toStringAsFixed(1)}");
  });
}
