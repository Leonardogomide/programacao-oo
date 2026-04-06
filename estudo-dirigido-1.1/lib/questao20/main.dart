import 'treinador.dart';

// Cria time de Misty
void main() {
  Pokemon p1 = Pokemon(7, 'Squirtle', 'Água', 45, 110);
  Pokemon p2 = Pokemon(9, 'Blastoise', 'Água', 85, 220);
  Pokemon p3 = Pokemon(149, 'Dragonite', 'Dragão/Voador', 95, 300);

  Treinador misty = Treinador('Misty', p1, p2, p3);
  misty.exibirTime();
}
