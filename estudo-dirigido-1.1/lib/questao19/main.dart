/*
Crie uma classe Comodo com os seguintes atributos obrigatórios:
• String nome
• double tamanho
Crie uma classe Casa com os seguintes atributos obrigatórios:
• String proprietario
• Comodo comodo1
• Comodo comodo2
• Comodo comodo3
Implemente os construtores para ambas as classes. Crie os seguintes métodos:
• exibirCasa() → mostra o proprietário e os dados dos cômodos
• calcularAreaTotal() → retorna a soma das áreas dos cômodos
No main(), instancie exatamente 1 casa com 3 cômodos diferentes e exiba todas as informações.
*/

import 'casa.dart';

void main() {
  Comodo escritorio = new Comodo('Escritório', 30.0);
  Comodo dormitorio = new Comodo('Dormitório', 20.0);
  Comodo banheiro = new Comodo('Banheiro', 10.0);

  Casa casa = new Casa('Carla', escritorio, dormitorio, banheiro);
  casa.exibirCasa();
}
