/*
Crie uma classe Quadrado com os seguintes atributos obrigatórios:
• double lado
• String caractere
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• calcularArea() → retorna a área do quadrado
• calcularPerimetro() → retorna o perímetro do quadrado
• desenhar() → desenha o quadrado usando o caractere informado
• exibirResumo() → mostra lado, área e perímetro
• ehIgual(outroQuadrado) → retorna true se os dois quadrados forem iguais
No main(), instancie exatamente 2 quadrados diferentes e 2 quadrados iguais, exiba o resumo de cada um e desenhe ambos. Verifique quais quadrados são iguais.
Restrições:
• lado deve ser maior que 0
• caractere não pode ser vazio
• o caractere usado no desenho deve ter apenas 1 símbolo
• o desenho deve formar um quadrado proporcional ao valor de lado
*/

import 'quadrado.dart';

void main() {
  Quadrado q1 = new Quadrado(4, 'X');
  Quadrado q2 = new Quadrado(6, 'O');
  Quadrado q3 = new Quadrado(4, 'Y');
  Quadrado q4 = new Quadrado(4, 'Z');

  q1.exibirResumo();
  q1.desenhar();

  q2.exibirResumo();
  q2.desenhar();

  q3.exibirResumo();
  q3.desenhar();

  q4.exibirResumo();
  q4.desenhar();

  print("q1 == q2? " + q1.ehIgual(q2).toString());
  print("q1 == q3? " + q1.ehIgual(q3).toString());
  print("q3 == q4? " + q3.ehIgual(q4).toString());
}
