import "dart:io";
void main (){
  stdout.write("Escriba el nombre del aprendiz: ");
  String? nombre = stdin.readLineSync();

  if (nombre == null) {
    stdout.write("El nombre no puede estar vacío.\n");
    return;
  }
  stdout.write("Escriba la nota del aprendiz: ");
  var nota = int.parse(stdin.readLineSync()!);

  stdout.write("El aprendiz $nombre tiene la siguiente calificación: $nota\n");

  if (nota >=0 && nota <=20){
    print("La calificación de $nota es deficiente");
  } else if(nota >=21 && nota <=29) {
    print ("La calificación de $nota es baja");
  } else if(nota >=30 && nota <=38){
    print ("La calificación de $nota es buena");
  }else if (nota >=39 && nota <=50){
    print ("La calificación de $nota es superior");
  } else{
    print("La calificación es incorrecta. intente nuevamente");
  }
  
}