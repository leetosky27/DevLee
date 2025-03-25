import 'dart:convert';

void main (){
  Map<String, dynamic> datos = {'nombre': 'luis', 'edad': 22};
  String jsonString = jsonEncode(datos);
  print (jsonString);
} 