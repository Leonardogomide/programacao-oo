/*
Crie uma classe Triangulo com os seguintes atributos obrigatórios:
• double lado1
• double lado2
• double lado3
• String caractere
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• calcularPerimetro() → retorna o perímetro do triângulo
• calcularArea() → retorna a área do triângulo usando a fórmula de Heron
• desenharEsquerda() → desenha um triângulo alinhado à esquerda
• desenharCentralizado() → desenha um triângulo centralizado
• exibirResumo() → mostra os lados, a área e o perímetro
No main(), instancie exatamente 2 triângulos diferentes, exiba o resumo de cada um e desenhe ambos nas duas formas pedidas.
*/

import 'triangulo.dart';

void main() {
  Triangulo t1 = new Triangulo(6, 8, 10, 'A');
  Triangulo t2 = new Triangulo(7, 7, 7, 'B');

  t1.exibirResumo();
  t1.desenharEsquerda();
  t1.desenharCentralizado();

  t2.exibirResumo();
  t2.desenharEsquerda();
  t2.desenharCentralizado();
}
