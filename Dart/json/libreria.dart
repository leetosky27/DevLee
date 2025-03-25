  import 'dart:convert';

  void main (){
    Map <String, dynamic> libro = {'titulo': '100 años de seriedad', 'autor': 'Gabriel Garcia Marques', "año": 2000};
    String jsonString = jsonEncode(libro);
    print (jsonString);
  }