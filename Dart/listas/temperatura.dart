 List <double> temperatura = [20.0, 32.0 , 8.3, 30.5, 22.8, 31.1, 32.5];
  
  void main (){
    if (temperatura.isEmpty) {
      print("La lista de temperaturas esta vacia");
      return;
    }
    double suma = temperatura.reduce((a, b) => a + b);
    double promedio = suma / temperatura.length;
    double maxima = temperatura.reduce((a, b) => a > b? a : b);
    double minima = temperatura.reduce((a, b) => a < b? a : b);

    print("La temperatura promedio es: $promedio");
    print("La temperatura maxima es: $maxima");
    print("La temperatura minima es: $minima");

    int  dias30 = temperatura.where((t) => t > 30).length;
    print("Hay ${dias30} dias con temperatura mayor a 30°C");
 
  }