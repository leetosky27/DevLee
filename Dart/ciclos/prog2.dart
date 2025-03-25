import "dart:io";

void main() {
  int num_est = 0;
  double prom_nota = 0;
  double nota = 0;
  int x = 0;

   print ("Ingrese la cantidad de estudiantes: ");
   x = int.parse(stdin.readLineSync()!);

  for (num_est = 1; num_est <= x; num_est++) {
    stdout.write("Ingrese la nota del estudiante $num_est: ");
    nota = double.parse(stdin.readLineSync()!);
    prom_nota = prom_nota + nota;
  }
  prom_nota = prom_nota /  (num_est - 1);
  print("El promedio de notas es: $prom_nota");
}