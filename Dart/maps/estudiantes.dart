void main (){
Map<String, int> notas ={'Andrea': 65, 'Heiver': 85, 'Artur': 98};
print("Notas inciales $notas\n");

notas.addAll({'Roger': 70});
print("las notas con el estudiante nuevo $notas\n");

notas.remove('Andrea');
print("las notas con el estudiante eliminado $notas\n");

 print("La nota de heiver es ${notas['Heiver']}");
// print("La nota de Heiver ${notas['Heiver']}");
// notas.forEach((clave, valor) => print('$clave tiene $valor años'));

} 