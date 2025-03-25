void main() {
  List<String> frutas = ['manzana', 'plátano', 'manzana', 'naranja', 'plátano', 'manzana', 'uva'];

  Map<String, int> conteoFrutas = {};

  for (String fruta in frutas) {
    if (conteoFrutas.containsKey(fruta)) {
      conteoFrutas[fruta] = conteoFrutas[fruta]! + 1;
    } else {
      conteoFrutas[fruta] = 1;
    }
  }

  print("Conteo de frutas: $conteoFrutas");
}
