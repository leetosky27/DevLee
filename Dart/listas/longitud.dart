void main (){
  List<String> frutas = ['Manzana', 'Banana', 'Naranja'];
  //print (frutas[1]);

   frutas[0] = 'limon';
   //print (frutas);

 frutas.remove ('Banana');
   frutas.removeAt(0);
   print (frutas);

    print ( frutas.length);
    print (frutas.contains('Naranja'));
    print (frutas.indexOf('Naranja'));
}