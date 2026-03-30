/*
Crie uma classe Pokemon com os seguintes atributos obrigatórios:
• int numero
• String nome
• String tipo
• int nivel
• int hp
Crie uma classe Treinador com os seguintes atributos obrigatórios:
• String nome
• Pokemon pokemon1
• Pokemon pokemon2
• Pokemon pokemon3
Implemente os construtores para ambas as classes. Crie os seguintes métodos:
• exibirTime() → mostra o nome do treinador e os dados dos pokémons
• calcularPoderTotal() → soma o nível de todos os pokémons
• pokemonMaisForte() → exibe o pokémon com maior nível
No main(), instancie exatamente 1 treinador com 3 pokémons diferentes e exiba todas as informações.
*/

import 'treinador.dart';

void main() {
  Pokemon p1 = new Pokemon(7, 'Squirtle', 'Água', 45, 110);
  Pokemon p2 = new Pokemon(9, 'Blastoise', 'Água', 85, 220);
  Pokemon p3 = new Pokemon(149, 'Dragonite', 'Dragão/Voador', 95, 300);

  Treinador misty = new Treinador('Misty', p1, p2, p3);
  misty.exibirTime();
}
