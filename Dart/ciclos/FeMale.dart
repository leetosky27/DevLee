import 'dart:io';

void main() {
  int x = 0;
  int num_per = 0;
  int con_muj = 0;
  int con_hom = 0;
  String genero = '';

  print("Favor Digite Número de personas a evaluiar: ");
  num_per = int.parse(stdin.readLineSync()!);

  for (x = 1; x <= num_per; x++) {
    print("Favor digite género de persona No. $x");
    genero = stdin.readLineSync()!;

    if (genero == 'f') {
      con_muj = con_muj + 1;
    }
    if (genero == 'm') {
      con_hom = con_hom + 1;
    }
  }

  print(
      "La estadistica es la siguiente: Mujeres = $con_muj --  Hombre = $con_hom");
}