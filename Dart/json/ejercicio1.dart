import "dart:convert";

void main (){
String jsonString = '{"nombre": "Ana", "edad": 20}';
Map<String, dynamic> datos = jsonDecode(jsonString);
print (datos ['nombre']);
print (datos['edad']);

}
