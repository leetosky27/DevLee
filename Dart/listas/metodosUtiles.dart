void main (){
  List <int> valores = [5,2,9,1,7];
// ordenar ascendente 
// //  valores.sort();
print (valores);

// ordenar descendente
//  valores.reversed; //
//print  (valores.toList());
print (valores.reversed);

 // filtrar 

var mayores = valores.where((n)=> n > 5).toList();
print (mayores);
}