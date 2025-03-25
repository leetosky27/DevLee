import "dart:io";

void main() {
  int num_est=0;
  double prom_nota =0;
  double nota=0;

  for (num_est = 1; num_est <= 10; num_est++) {
    stdout.write("Ingrese la nota del estudiante $num_est: ");
    nota = double.parse(stdin.readLineSync()!);
    prom_nota = prom_nota + nota;
  }
  prom_nota = prom_nota / 10;
  print("El promedio de notas es: $prom_nota");

}
