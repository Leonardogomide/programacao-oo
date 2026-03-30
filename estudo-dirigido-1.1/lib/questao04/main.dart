/*
Crie uma classe Lampada com os seguintes atributos obrigatórios:
• bool ligada
• int quantidadeLigacoes
• bool queimada
Implemente um construtor que inicialize a lâmpada como desligada, com zero ligações e não queimada. Crie os seguintes métodos:
• ligar() → liga a lâmpada
• desligar() → desliga a lâmpada
• exibirEstado() → mostra se está ligada, desligada ou queimada
No main(), instancie 1 lâmpada e simule seu uso, ligando e desligando várias vezes.
Restrições:
• após 5 vezes ligando, a lâmpada deve ficar queimada
• uma lâmpada queimada não pode mais ser ligada
• a cada vez que ligar, incremente quantidadeLigacoes
*/

import 'lampada.dart';

void main() {
  Lampada lampada = new Lampada();

  lampada.ligar();
  lampada.exibirEstado();
  lampada.desligar();
  lampada.exibirEstado();

  lampada.ligar();
  lampada.desligar();
  lampada.ligar();
  lampada.desligar();
  lampada.ligar();
  lampada.desligar();
  lampada.ligar();
  lampada.exibirEstado();
  lampada.ligar();
  lampada.exibirEstado();
}
