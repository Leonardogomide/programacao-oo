/*
Crie uma classe Contador com um construtor que inicialize o contador com um valor inicial.
Crie os seguintes métodos:
• incrementar() → aumenta o valor em 1
• decrementar() → diminui o valor em 1
• zerar() → redefine o valor para 0
• exibirValor() → mostra o valor atual do contador
No main(), instancie exatamente 2 contadores diferentes e realize algumas operações com cada um.
Restrições:
• o valor inicial deve ser maior ou igual a 0
• o valor não pode ficar negativo
• ao decrementar, se o valor estiver em 0, ele deve permanecer em 0
*/

import 'contador.dart';

void main() {
  Contador contador1 = new Contador(5);
  contador1.incrementar();
  contador1.incrementar();
  contador1.incrementar();
  contador1.exibirValor();
  contador1.decrementar();
  contador1.exibirValor();
  contador1.zerar();
  contador1.exibirValor();
  contador1.decrementar();
  contador1.exibirValor();

  Contador contador2 = new Contador(20);
  contador2.exibirValor();
  contador2.decrementar();
  contador2.decrementar();
  contador2.exibirValor();
  contador2.zerar();
  contador2.exibirValor();
}
