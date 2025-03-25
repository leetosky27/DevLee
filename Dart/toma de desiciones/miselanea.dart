import 'dart:io';
void main (){
  stdout.write("Nombre de estudiante: ");
String? nombre = stdin.readLineSync();

stdout.write("Nombre del libro: ");
String? libro = stdin.readLineSync();

stdout.write("El nombre del estudiante es $nombre\nEl libro es $libro\n");

stdout.write("Registrar pagina de inicio a fotocopiar: ");
int? hojaInicio = int.parse(stdin.readLineSync()!);

stdout.write("Registrar pagina final a fotocopiar: ");
int? hojaFinal = int.parse(stdin.readLineSync()!);

int hojasImprimir = hojaFinal - hojaInicio + 1;

if (hojasImprimir == 1){
  print("Imprimiendo $hojasImprimir hoja por el valor de 100");
    print("Costo por hoja: 100");


} else if (hojasImprimir >=2 && hojasImprimir <= 10){
  int valorHojas = hojasImprimir * 80;
    print("Costo por hoja: 80");
  print("Imprimiendo $hojasImprimir hojas por el valor de $valorHojas");

  } else if(hojasImprimir>=11 && hojasImprimir <= 20){
  int valorHojas = hojasImprimir * 50;
    print("Costo por hoja: 50");
    print("Imprimiendo $hojasImprimir hojas por el valor de $valorHojas");
  }
  else if (hojasImprimir >20){
    int valorHojas = hojasImprimir *40;
    print("Costo por hoja: 40");
    print("Imprimiendo $hojaInicio a $hojaFinal que son $hojasImprimir hojas por el valor de $valorHojas");
  }

}